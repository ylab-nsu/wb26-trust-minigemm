
/*@
  axiomatic MatrixMult
  {

    predicate MatrixEquality{L1, L2}(float* A, integer M, integer N) =
    \forall integer k; 0 <= k < M*N ==> \at(A[k], L1) == \at(A[k], L2);
        
    predicate MatrixUnequality{L1, L2}(float* A, integer M, integer N, integer from, integer to) =
    \forall integer k; 0 <= k < M*N && !(from <= k <= to) ==> \at(A[k], L1) == \at(A[k], L2);

    predicate MatrixUnequality2{L1, L2}(float* A, integer M, integer N, integer to) =
    \forall integer k; 0 <= k < M*N && !(0 <= k <= to*N) ==> \at(A[k], L1) == \at(A[k], L2);
 
 
 
    inductive DotProduction{L1}(float* A, float* B, integer to, 
                                   integer i, integer K, integer j, integer N, real res)
	{
    case dotproduction_empty_range{L1}:
      \forall float* A, float* B, integer to, integer i, integer K, integer j, integer N;
      0 >= to ==> DotProduction{L1}(A, B, to, i, K, j, N, 0.0);

    case dotproduction_positive_range{L1}:
      \forall float* A, float* B, integer to, integer i, integer K, integer j, integer N, real res;
      (0 < to) &&
      DotProduction{L1}(A, B, to-1, i, K, j, N, res) ==> 
      DotProduction{L1}(A, B, to, i, K, j, N, res + \at(A[i*K + (to-1)], L1) * \at(B[(to-1)*N + j], L1));
      
	}      
    inductive RowResult{L1, L2}(float* A, float* B, float* C, integer to, 
                                integer i, integer K, integer N) 
    {
      case rowresult_empty{L1, L2}:
        \forall float* A, float* B, float* C, integer to, integer i, integer K, integer N; 
        0 >= to ==> RowResult{L1, L2}(A, B, C, to, i, K, N);

      case rowresult_step{L1, L2}:
        \forall float* A, float* B, float* C, integer to, integer i, integer K, integer N; 
        0 < to &&
        RowResult{L1, L2}(A, B, C, to-1, i, K, N) && 
        DotProduction{L1}(A, B, K, i, K, (to-1), N, \at(C[i*N + (to-1)], L2))
        ==> RowResult{L1, L2}(A, B, C, to, i, K, N);
    }
       
    inductive MatrixResult{L1, L2}(float* A, float* B, float* C, integer to, 
                                   integer K, integer N, integer M) 
    {
      case matrixresult_empty{L1, L2}:
        \forall float* A, float* B, float* C, integer to, integer K, integer N, integer M; 
        0 >= to ==> MatrixResult{L1, L2}(A, B, C, to, K, N, M);

      case matrixresult_step{L1, L2}:
        \forall float* A, float* B, float* C, integer to, integer K, integer N, integer M;
        0 < to &&
        MatrixResult{L1, L2}(A, B, C, to-1, K, N, M) && 
        RowResult{L1, L2}(A, B, C, N, to-1, K, N)
        ==> MatrixResult{L1, L2}(A, B, C, to, K, N, M);
    }
  }
  
  lemma math_bounds:
    \forall integer i, M, N;
    0 <= i < M && 0 < N ==> 0 <= i*N && i*N + N <= M*N;
    
*/


/*@
  requires \valid_read(A + (0 .. M*K-1));
  requires \valid_read(B + (0 .. K*N-1));
  requires \valid(C + (0 .. M*N-1));
  requires \separated(A + (0 .. M*K-1), B + (0 .. K*N-1), C + (0 .. M*N-1));
  requires M > 0 && N > 0 && K > 0;
  

  ensures MatrixResult{Pre, Post}(A, B, C, M, K, N, M);
*/


void gemm_v0(int M, int N, int K, const float * A, const float * B, float *C)
{
    /*@
        loop invariant 0 <= i <= M;
        loop invariant MatrixResult{Pre, Here}(A, B, C, i, K, N, M);

        loop invariant \separated(A + (0 .. M*K-1), B + (0 .. K*N-1), C + (0 .. M*N-1));
        loop assigns C[0 .. M*N-1], i;
        loop variant M - i;
    */
    for (int i = 0; i < M; ++i)
    {
		
        /*@
			loop invariant 0 <= i < M;
            loop invariant 0 <= j <= N;
            loop invariant RowResult{Pre, Here}(A, B, C, j, i, K, N);

            loop invariant \separated(A + (0 .. M*K-1), B + (0 .. K*N-1), C + (0 .. M*N-1));
            loop assigns C[i*N .. i*N+N-1], j;
            loop variant N-j;
        */
        for (int j = 0; j < N; ++j)
        {
            C[i*N + j] = 0.0;
            float sum = 0.0;
            
            
            /*@
				loop invariant 0 <= i < M;
                loop invariant 0 <= k <= K;
                loop invariant 0 <= j < N;
                loop invariant DotProduction{Here}(A, B, k, i, K, j, N, sum);
    
				loop invariant \separated(A + (0 .. M*K-1), B + (0 .. K*N-1), C + (0 .. M*N-1));
                loop assigns sum, k;
                loop variant K-k;
             */
            for (int k = 0; k < K; ++k)
            {
				/*@ assert step: DotProduction{Here}(A, B, k+1, i, K, j, N, 
                                 sum + A[i*K+k] * B[k*N+j]); 
                                 */
                sum += A[i*K + k] * B[k*N + j];
            }
            C[i*N + j] = sum;
             /*@ assert row_step: RowResult{Pre, Here}(A, B, C, j+1, i, K, N); */
        }
         /*@ assert mat_step: MatrixResult{Pre, Here}(A, B, C, i+1, K, N, M); */
      
    }
}


//че ваще есть: матрицы A B C 
//				размеры M N K

//				индексы i j k
//				перемен sum

//A B ВАЩЕ НИКАК НЕ МЕНЯЮТСЯ ПО ХОДУ ВЫПОЛНЕНИЯ ПРОГРАММЫ
//C МЕНЯЕТСЯ ПО ОПИСАННОЙ АКСИОМАТИКЕ
//M N K НИКАК НЕ МЕНЯЮТСЯ ПО ХОДУ ПРОГРАММЫ
//i от 0 до M-1
//j от 0 до N-1
//k от 0 до K-1
//sum = произведению строки на столбец
