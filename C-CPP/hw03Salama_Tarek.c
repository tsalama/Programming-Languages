// Tarek Salama

#define _CRT_SECURE_NO_WARNINGS  // Not show security related warning
#include <stdio.h>

//Q1: forward declarations (5 points)

void initialize_matrices(int, int, int);
void fill_matrix(int);
void add_matrices(int, int, int);
void print_sum_matrix(int);

int main()
{
	//Q2: define matrices (5 points)
	//Define three 3x3 integer matrices a, b, and c
	//(hint: a 3x3 matrix is the same as a 2D array with 3 rows and 3 columns)

	int a[3][3], b[3][3], c[3][3];

	initialize_matrices(a, b, c);

	printf("Matrix a:\n");
	fill_matrix(a);

	printf("Matrix b:\n");
	fill_matrix(b);

	add_matrices(a, b, c);

	print_sum_matrix(c);

	system("pause");
	return 0;
}

//Q3: initialize (10 points)
//loop through the matrices and set each integer value to 0
void initialize_matrices(int a[3][3], int b[3][3], int c[3][3])
{
	for (int row = 0; row < 3; row++)
	{
		for (int col = 0; col < 3; col++)
		{
			a[row][col] = 0;
			b[row][col] = 0;
			c[row][col] = 0;
		}
	}
}

//Q4: insert (10 points)
//Loop through the given matrix and fill it with input integers.
//Optional: You can prompt for input by printing "Enter the next integer: "
void fill_matrix(int matrix[3][3])
{
	for (int row = 0; row < 3; row++)
	{
		for (int col = 0; col < 3; col++)
		{
			scanf("%d", &matrix[row][col]);
		}
	}
}

//Q5: addition(10 points)
//Loop through and add together the matrices a and b. Store the sum in matrix c.
//(hint: the result for c[0][0] is the sum of a[0][0] and b[0][0])
void add_matrices(int a[3][3], int b[3][3], int c[3][3])
{
	for (int row = 0; row < 3; row++)
	{
		for (int col = 0; col < 3; col++)
		{
			c[row][col] = a[row][col] + b[row][col];
		}
	}
}

//Q6: print(10 points)
//print the matrix c by row in the following format using tabs (\t):
// X     X     X
// X     X     X
// X     X     X
//(hint: printf( "%d\t", _ ) )
void print_sum_matrix(int c[3][3])
{
	printf("\nMatrix c:\n");
	for (int row = 0; row < 3; row++)
	{
		for (int col = 0; col < 3; col++)
		{
			printf("%d\t", c[row][col]);
		}
	printf("\n");
	}
	printf("\n");
}