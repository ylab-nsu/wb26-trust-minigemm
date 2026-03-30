/*@
  axiomatic MatrixMult
  {
    //скалярное произведение
    logic real DotProduction{L1}(float* A, float* B, integer from, integer to, 
                                   integer i, integer K, integer j, integer N)
		reads \at(A[i*K + from .. i*K + to -1], L1), \at(B[0 .. K*N -1], L1);

    axiom dotproduction_empty_range{L1}:
      \forall float* A, float* B, integer from, integer to, integer i, integer K, integer j, integer N;
      from >= to ==> DotProduction{L1}(A, B, from, to, i, K, j, N) == 0;

    axiom dotproduction_positive_range{L1}:
      \forall float* A, float* B, integer from, integer to, integer i, integer K, integer j, integer N;
      (from < to) ==>
      DotProduction{L1}(A, B, from, to, i, K, j, N) == 
      DotProduction{L1}(A, B, from, to-1, i, K, j, N) + \at(A[i*K + (to-1)], L1) * \at(B[(to-1)*N + j], L1);
      
      
    //строки
    predicate RowResult{L1, L2}(float* A, float* B, float* C, integer from, integer to, 
                           integer i, integer K, integer N)
       reads \at(A[i*K .. i*K + K -1], L1), \at(B[0 .. K*N -1], L1), \at(C[i*N + from .. i*N + to -1], L2);

    axiom rowresult_empty{L1, L2}:
      \forall float* A, float* B, float* C, integer from, integer to, integer i, integer K, integer N; 
      from >= to ==> RowResult{L1, L2}(A, B, C, from, to, i, K, N);

    axiom rowresult_range{L1, L2}:
      \forall float* A, float* B, float* C, integer from, integer to, integer i, integer K, integer N; 
      from < to ==>
      (RowResult{L1, L2}(A, B, C, from, to, i, K, N) <==> 
      (\at(C[i*N + (to-1)], L2) == DotProduction{L1}(A, B, 0, K, i, K, (to-1), N) && 
       RowResult{L1, L2}(A, B, C, from, (to-1), i, K, N)));
       
       //вся матрица
    predicate MatrixResult{L1, L2}(float* A, float* B, float* C, integer from, integer to, 
                            integer K, integer N, integer M)
       reads \at(A[0 .. M*K-1], L1), \at(B[0 .. K*N -1], L1), \at(C[0 .. M*N-1], L2);

    axiom matrixresult_empty{L1, L2}:
      \forall float* A, float* B, float* C, integer from, integer to, integer K, integer N, integer M; 
      from >= to ==> MatrixResult{L1, L2}(A, B, C, from, to, K, N, M);

    axiom matrixresult_range{L1, L2}:
      \forall float* A, float* B, float* C, integer from, integer to, integer K, integer N, integer M;
      from < to ==>
      (MatrixResult{L1, L2}(A, B, C, from, to, K, N, M) <==> 
      (RowResult{L1, L2}(A, B, C, 0, N, (to-1), K, N) && 
       MatrixResult{L1, L2}(A, B, C, from, (to-1), K, N, M)));
  }
*/
//assigns C[0 .. M*N-1];
/*@
  requires \valid_read(A + (0 .. M*K-1));
  requires \valid_read(B + (0 .. K*N-1));
  requires \valid(C + (0 .. M*N-1));
  requires \separated(A + (0 .. M*K-1), B + (0 .. K*N-1), C + (0 .. M*N-1));
  requires M > 0 && N > 0 && K > 0;
  

  
  ensures MatrixResult{Pre, Post}(A, B, C, 0, M, K, N, M);
*/
void gemm_v0(int M, int N, int K, const float * A, const float * B, float *C)
{
	//loop assigns i, C[0 .. M*N-1];
    /*@
        loop assigns i;
        loop invariant 0 <= i <= M;
        loop invariant MatrixResult{Pre, Here}(A, B, C, 0, i, K, N, M);
    */
    for (int i = 0; i < M; ++i)
    {
		//loop assigns j, C[i*N .. i*N+N-1];
        /*@
            loop assigns j;
            loop invariant 0 <= j <= N;
            loop invariant RowResult{Pre, Here}(A, B, C, 0, j, i, K, N);
            
        */
        for (int j = 0; j < N; ++j)
        {
            C[i*N + j] = 0;
            
            //loop assigns k, C[i*N + j];
            /*@
				loop assigns k;
                loop invariant 0 <= k <= K;
                loop invariant C[i*N + j] == DotProduction{Pre}(A, B, 0, k, i, K, j, N);
        
               
             */
            for (int k = 0; k < K; ++k)
                C[i*N + j] += A[i*K + k] * B[k*N + j];
        }
    }
}

