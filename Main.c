#include<stdio.h>
#include<time.h>
#include "Strassen.h"

void showMatrix(unsigned int* C, int M, int N) {
	printf("\n=============================\n");
	for (int i = 0; i < M; i++) {
		for (int j = 0; j < N; j++) {
			printf("%d ", C[i * N + j]);
		}
		printf("\n");
	}
	printf("\n");
}

void mm_test(int M, int N, int K, int rangeTop) {
	unsigned seed = time(0);
	srand(seed);
	clock_t start, end;
	for (int i = 0; i < 3; i++) {
		unsigned int* mA = (unsigned int*)malloc(M * K * sizeof(unsigned int));
		unsigned int* mB = (unsigned int*)malloc(K * N * sizeof(unsigned int));
		unsigned int* mC = (unsigned int*)malloc(M * N * sizeof(unsigned int));
		unsigned int* mD = (unsigned int*)malloc(M * N * sizeof(unsigned int));
		unsigned int* mE = (unsigned int*)malloc(M * N * sizeof(unsigned int));
		for (int j = 0; j < M * K; j++) {
			mA[j] = rand() % rangeTop;
		}
		for (int j = 0; j < K * N; j++) {
			mB[j] = rand() % rangeTop;
		}
		start = clock();
		mm_strassen(mA, mB, mC, M, N, K);
		end = clock();
		double endtime = (double)(end - start) / CLOCKS_PER_SEC;
		printf("Strassen%d time: %fms\n", i, endtime * 1000);

		start = clock();
		mm_generate(mA, mB, mD, M, N, K);
		end = clock();
		endtime = (double)(end - start) / CLOCKS_PER_SEC;
		printf("Generate%d time: %fms\n", i, endtime * 1000);

		for (int j = 0; j < M * N; j++) {
			if (mC[j] != mD[j]) {
				printf("========A========\n");
				showMatrix(mA, M, K);
				printf("========B========\n");
				showMatrix(mB, K, N);
				printf("========Strassen========\n");
				showMatrix(mC, M, N);
				printf("========Generate========\n");
				showMatrix(mD, M, N);
				return;
			}
		}
		printf("\n");
	}
}

int main()
{
	int M, N, K, rangeTop;
	M = 1000;
	N = 1000;
	K = 2000;
	rangeTop = 10;
	mm_test(M, N, K, rangeTop);
	return 0;
}