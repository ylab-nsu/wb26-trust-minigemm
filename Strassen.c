#define NULL (void*)0
#define size_t unsigned int

void* malloc(size_t size)
{
	return NULL;
}

void free(void* k) {}

void mm_generate(unsigned int* matA, unsigned int* matB, unsigned int* matC, unsigned int M, unsigned int N, unsigned int K)
{
	for (int i = 0; i < M; i++)
	{
		for (int j = 0; j < N; j++)
		{
			unsigned int sum = 0;
			for (int k = 0; k < K; k++)
			{
				sum += matA[i * K + k] * matB[k * N + j];
			}
			matC[i * N + j] = sum;
		}
	}
}



unsigned int mm_strassen(unsigned int* matA, unsigned int* matB, unsigned int* matC, unsigned int M,
	 unsigned int N, unsigned int K)
{
	int error = 0;
	//если размер не кратен 2 вызывается обычное умножение матриц
	//if ((M <= 2) || M % 2 != 0 || N % 2 != 0 || K % 2 != 0)
	if(M <= 2)
	{
		mm_generate(matA, matB, matC, M, N, K);
		return 0;
	} 
	if(M % 2 !=0)
	{
		mm_generate(matA, matB, matC, M, N, K);
		return 0;
	}
	if(N % 2 !=0)
	{
		mm_generate(matA, matB, matC, M, N, K);
		return 0;
	}
	if(K % 2 !=0) 
	{
		mm_generate(matA, matB, matC, M, N, K);
		return 0;
	}
	
	int offset = 0;
	//M1 = (A11+A22)*(B11+B22)
	unsigned int* M1 = (unsigned int*)malloc((M / 2) * (N / 2) * sizeof(unsigned int));
	if (M1 == NULL) { return 1; }
	{
		//M1_0 = (A11+A22)

		unsigned int* M1_0 = (unsigned int*)malloc((M / 2) * (K / 2) * sizeof(unsigned int));
		if (M1_0 == NULL) 
		{ 
			free(M1);
			error = 1;
			return 1; 
		}
		
		offset = M * K / 2 + K / 2;
		for (int i = 0; i < M / 2; i++)
		{
			for (int j = 0; j < K / 2; j++)
			{
				const int baseIdx = i * K + j;
				M1_0[i * K / 2 + j] = matA[baseIdx] + matA[baseIdx + offset];
			}
		}
		//M1_1 = (B11+B22)
		unsigned int* M1_1 = (unsigned int*)malloc((K / 2) * (N / 2) * sizeof(unsigned int));
		if (M1_1 == NULL) 
		{
			free(M1);                                                     
			free(M1_0);
			return 1; 
		}
		
		offset = K * N / 2 + N / 2;
		for (int i = 0; i < K / 2; i++)
		{
			for (int j = 0; j < N / 2; j++)
			{
				const int baseIdx = i * N + j;
				M1_1[i * N / 2 + j] = matB[baseIdx] + matB[baseIdx + offset];
			}
		}
		error = mm_strassen(&M1_0[0], &M1_1[0], &M1[0], M / 2, N / 2, K / 2);
		if(error == 1)
		{
			free(M1);
			free(M1_0);         
			free(M1_1);
			return 1;
		}
		free(M1_0);         M1_0 = NULL;
		free(M1_1);         M1_1 = NULL;
	}

	//M2 = (A21+A22)*B11
	unsigned int* M2 = (unsigned int*)malloc((M / 2) * (N / 2) * sizeof(unsigned int));
	if (M2 == NULL) 
	{ 
		free(M1); 
		return 1; 
	}

	{
		//M2_0 = (A21+A22)
		unsigned int* M2_0 = (unsigned int*)malloc((M / 2) * (K / 2) * sizeof(unsigned int));
		if (M2_0 == NULL) 
		{

			free(M1);                
			free(M2); 
			 return 1; 
		}

		offset = K / 2;
		for (int i = M / 2; i < M; i++)
		{
			for (int j = 0; j < K / 2; j++)
			{
				const int baseIdx = i * K + j;
				M2_0[(i - M / 2) * K / 2 + j] = matA[baseIdx] + matA[baseIdx + offset];
			}
		}
		//M2_1 = B11
		unsigned int* M2_1 = (unsigned int*)malloc((K / 2) * (N / 2) * sizeof(unsigned int));
		if (M2_1 == NULL) 
		{ 
			free(M1);                
			free(M2);                                     
			free(M2_0); 
			return 1; 
		}

		for (int i = 0; i < K / 2; i++) {
			for (int j = 0; j < N / 2; j++) {
				M2_1[i * N / 2 + j] = matB[i * N + j];
			}
		}
		error = mm_strassen(&M2_0[0], &M2_1[0], &M2[0], M / 2, N / 2, K / 2);
		if(error == 1)
		{
			free(M1);                
			free(M2);                                        
			free(M2_0);         
			free(M2_1);
			return 1;
		}

		free(M2_0);         M2_0 = NULL;
		free(M2_1);         M2_1 = NULL;
	}

	//M3 = A11*(B12-B22)
	unsigned int* M3 = (unsigned int*)malloc((M / 2) * (N / 2) * sizeof(unsigned int));
	if (M3== NULL) 
	{
		
		free(M1);                
		free(M2); 
		return 1; 
	}
	
	{
		//M3_0 = A11
		unsigned int* M3_0 = (unsigned int*)malloc((M / 2) * (K / 2) * sizeof(unsigned int));
		if (M3_0 == NULL) 
		{
			
			free(M1);                
			free(M2); 
			free(M3);  
			return 1; 
		}
	
		for (int i = 0; i < M / 2; i++) {
			for (int j = 0; j < K / 2; j++) {
				M3_0[i * K / 2 + j] = matA[i * K + j];
			}
		}
		//M3_1 = (B12-B22)
		unsigned int* M3_1 = (unsigned int*)malloc((K / 2) * (N / 2) * sizeof(unsigned int));
		if (M3_1 == NULL) 
		{
			
			free(M1);                
			free(M2); 
			free(M3);                                    
			free(M3_0);   
			return 1; 
		}

		offset = K * N / 2;
		for (int i = 0; i < K / 2; i++)
		{
			for (int j = N / 2; j < N; j++)
			{
				const int baseIdx = i * N + j;
				M3_1[i * N / 2 + j - N / 2] = matB[baseIdx] - matB[baseIdx + offset];
			}
		}
		
		error=mm_strassen(&M3_0[0], &M3_1[0], &M3[0], M / 2, N / 2, K / 2);
		if(error == 1)
		{
			free(M1);                
			free(M2); 
			free(M3);                                       
			free(M3_0);         
			free(M3_1);
			return 1;
		}

		free(M3_0);         M3_0 = NULL;
		free(M3_1);         M3_1 = NULL;
	}

	//M4 = A22*(B21-B11)
	unsigned int* M4 = (unsigned int*)malloc((M / 2) * (N / 2) * sizeof(unsigned int));
	if (M4 == NULL) 
	{
		
		free(M1);                
		free(M2); 
		free(M3); 
		return 1; 
	}
	{
		//M4_0 = A22
		unsigned int* M4_0 = (unsigned int*)malloc((M / 2) * (K / 2) * sizeof(unsigned int));
		if (M4_0 == NULL) 
		{ 
			
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4);
			return 1; 
		}
		for (int i = M / 2; i < M; i++) {
			for (int j = K / 2; j < K; j++) {
				M4_0[(i - M / 2) * K / 2 + j - K / 2] = matA[i * K + j];
			}
		}
		//M4_1 = (B21-B11)
		unsigned int* M4_1 = (unsigned int*)malloc((K / 2) * (N / 2) * sizeof(unsigned int));
		if (M4_1 == NULL) 
		{
			
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4);                  
			free(M4_0);  
			return 1; 
		}

		offset = N * K / 2;
		for (int i = 0; i < K / 2; i++)
		{
			for (int j = 0; j < N / 2; j++)
			{
				const int baseIdx = i * N + j;
				M4_1[i * N / 2 + j] = matB[baseIdx + offset] - matB[baseIdx];
			}
		}
		error=mm_strassen(&M4_0[0], &M4_1[0], &M4[0], M / 2, N / 2, K / 2);
		if(error == 1)
		{
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4);                     
			free(M4_0);         
			free(M4_1);
			return 1;
		}

		free(M4_0);         M4_0 = NULL;
		free(M4_1);         M4_1 = NULL;
	}

	//M5 = (A11+A12)*B22
	unsigned int* M5 = (unsigned int*)malloc((M / 2) * (N / 2) * sizeof(unsigned int));
	if (M5== NULL) 
	{
		
		free(M1);                
		free(M2); 
		free(M3);                  
		free(M4);  
		return 1; 
	}

	{
		//M5_0 = (A11+A12)
		unsigned int* M5_0 = (unsigned int*)malloc((M / 2) * (K / 2) * sizeof(unsigned int));
		if (M5_0 == NULL) 
		{
			
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4); 
			free(M5); 
			return 1; 
		}
		offset = K / 2;
		for (int i = 0; i < M / 2; i++)
		{
			for (int j = 0; j < K / 2; j++)
			{
				const int baseIdx = i * K + j;
				M5_0[i * K / 2 + j] = matA[baseIdx] + matA[baseIdx + offset];
			}
		}
		//M5_1 = B22
		unsigned int* M5_1 = (unsigned int*)malloc((K / 2) * (N / 2) * sizeof(unsigned int));
		if (M5_1 == NULL) 
		{
			
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4); 
			free(M5);                    
			free(M5_0); 
			return 1; 
		}

		offset = N * K / 2 + N / 2;
		for (int i = 0; i < K / 2; i++) {
			for (int j = 0; j < N / 2; j++) {
				M5_1[i * N / 2 + j] = matB[i * N + j + offset];
			}
		}
		error=mm_strassen(&M5_0[0], &M5_1[0], &M5[0], M / 2, N / 2, K / 2);
		if(error == 1)
		{
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4); 
			free(M5);                    
			free(M5_0);         
			free(M5_1);
			return 1;
		}

		free(M5_0);         M5_0 = NULL;
		free(M5_1);         M5_1 = NULL;
	}

	//M6 = (A21-A11)*(B11+B12)
	unsigned int* M6 = (unsigned int*)malloc((M / 2) * (N / 2) * sizeof(unsigned int));
	if (M6 == NULL) 
	{
		
		free(M1);                
		free(M2); 
		free(M3);                  
		free(M4); 
		free(M5);  
		return 1; 
	}

	{
		//M6_0 = (A21-A11)
		unsigned int* M6_0 = (unsigned int*)malloc((M / 2) * (K / 2) * sizeof(unsigned int));
		if (M6_0 == NULL) 
		{
			
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4); 
			free(M5);                  
			free(M6); 
			return 1; 
		}

		offset = K * M / 2;
		for (int i = 0; i < M / 2; i++)
		{
			for (int j = 0; j < K / 2; j++)
			{
				const int baseIdx = i * K + j;
				M6_0[i * K / 2 + j] = matA[baseIdx + offset] - matA[baseIdx];
			}
		}
		//M6_1 = (B11+B12)
		unsigned int* M6_1 = (unsigned int*)malloc((K / 2) * (N / 2) * sizeof(unsigned int));
		if (M6_1 == NULL) 
		{
			
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4); 
			free(M5);                  
			free(M6);  
			free(M6_0); 
			return 1; 
		}

		offset = N / 2;
		for (int i = 0; i < K / 2; i++)
		{
			for (int j = 0; j < N / 2; j++)
			{
				const int baseIdx = i * N + j;
				M6_1[i * N / 2 + j] = matB[baseIdx] + matB[baseIdx + offset];
			}
		}
		error=mm_strassen(&M6_0[0], &M6_1[0], &M6[0], M / 2, N / 2, K / 2);
		if(error == 1)
		{
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4); 
			free(M5);                  
			free(M6);  
			free(M6_0);         
			free(M6_1);
			return 1;
		}

		free(M6_0);         M6_0 = NULL;
		free(M6_1);         M6_1 = NULL;
	}

	//M7 = (A12-A22)*(B21+B22)
	unsigned int* M7 = (unsigned int*)malloc((M / 2) * (N / 2) * sizeof(unsigned int));
	if (M7 == NULL) 
	{
		
		free(M1);                
		free(M2); 
		free(M3);                  
		free(M4); 
		free(M5);                  
		free(M6);
		return 1; 
	}

	{
		//M7_0 = (A12-A22)
		unsigned int* M7_0 = (unsigned int*)malloc((M / 2) * (K / 2) * sizeof(unsigned int));
		if (M7_0 == NULL)
		{
			
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4); 
			free(M5);                  
			free(M6);
			free(M7);
			return 1; 
		}

		offset = M * K / 2;
		for (int i = 0; i < M / 2; i++)
		{
			for (int j = K / 2; j < K; j++)
			{
				const int baseIdx = i * K + j;
				M7_0[i * K / 2 + j - K / 2] = matA[baseIdx] - matA[baseIdx + offset];
			}
		}
		//M7_1 = (B21+B22)
		unsigned int* M7_1 = (unsigned int*)malloc((K / 2) * (N / 2) * sizeof(unsigned int));
		if (M7_1== NULL) 
		{ 
			
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4); 
			free(M5);                  
			free(M6);
			free(M7);  
			free(M7_0);
			return 1; 
		}

		offset = N / 2;
		for (int i = K / 2; i < K; i++)
		{
			for (int j = 0; j < N / 2; j++)
			{
				const int baseIdx = i * N + j;
				M7_1[(i - K / 2) * N / 2 + j] = matB[baseIdx] + matB[baseIdx + offset];
			}
		}
		error=mm_strassen(&M7_0[0], &M7_1[0], &M7[0], M / 2, N / 2, K / 2);
		if(error == 1)
		{
			free(M1);                
			free(M2); 
			free(M3);                  
			free(M4); 
			free(M5);                  
			free(M6);
			free(M7);  
			free(M7_0);         
			free(M7_1);     
			return 1;
		}

		free(M7_0);         M7_0 = NULL;
		free(M7_1);         M7_1 = NULL;
	}

	for (int i = 0; i < M / 2; i++)
	{
		for (int j = 0; j < N / 2; j++)
		{
			const int idx = i * N / 2 + j;
			//C11 = M1+M4-M5+M7
			matC[i * N + j] = M1[idx] + M4[idx] - M5[idx] + M7[idx];
			//C12 = M3+M5
			matC[i * N + j + N / 2] = M3[idx] + M5[idx];
			//C21 = M2+M4
			matC[(i + M / 2) * N + j] = M2[idx] + M4[idx];
			//C22 = M1-M2+M3+M6
			matC[(i + M / 2) * N + j + N / 2] = M1[idx] - M2[idx] + M3[idx] + M6[idx];
		}
	}
	free(M1);           M1 = NULL;
	free(M2);           M2 = NULL;
	free(M3);           M3 = NULL;
	free(M4);           M4 = NULL;
	free(M5);           M5 = NULL;
	free(M6);           M6 = NULL;
	free(M7);           M7 = NULL;
	return error;
}