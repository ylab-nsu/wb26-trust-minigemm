#pragma once

void mm_generate(unsigned int* matA, unsigned int* matB, unsigned int* matC, unsigned int M, unsigned int N, unsigned int K);

unsigned int mm_strassen(unsigned int* matA, unsigned int* matB, unsigned int* matC, unsigned int M, unsigned int N, unsigned int K);

void* malloc(size_t size);

void free(void* k);