// Tarek Salama

#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

//Q1: update forward declarations (5)
//Update the forward declarations for the 4 functions used in the previous homework to implement pointers

void initialize_matrices(int* a, int* b, int* c);
void fill_matrix(int* matrix);
void add_matrices(int* a, int* b, int* c);
void print_sum_matrix(int* c);

int main()
{

	int a[3][3];
	int b[3][3];
	int c[3][3];

	//Q2: define pointers (5)
	//Define pointers ap, bp, and cp to the matrices that are defined above

	int *ap, *bp, *cp;

	ap = &a[0][0];
	bp = &b[0][0];
	cp = &c[0][0];

	initialize_matrices(ap, bp, cp);

	printf("Matrix a:\n");
	fill_matrix(ap);

	printf("Matrix b:\n");
	fill_matrix(bp);

	add_matrices(ap, bp, cp);

	print_sum_matrix(cp);

	system("pause");
	return 0;
}

//Q3: initialize (10)
//loop through the matrices and set each integer value to 0 using pointers
void initialize_matrices(int* a, int* b, int* c)
{	
	for (int i = 0; i < 9; i++)
	{
		*a = 0;
		a++;

		*b = 0;
		b++;

		*c = 0;
		c++;
	}
}

//Q4: insert (10)
//Loop through the given matrix and fill it with input integers using pointers.
//Optional: You can prompt for input by printing "Enter the next integer: "
void fill_matrix(int* matrix)
{
	for (int i = 0; i < 9; i++)
	{
		scanf("%d", &*matrix);
		matrix++;
	}
}

//Q5: addition(10)
//Loop through and add together the matrices a and b using pointers. Store the sum in matrix c using pointers.
//(hint: the result for c[0][0] is the sum of a[0][0] and b[0][0])
//(hint: it may be easier to store the individual integer values for a and b in temporary integer variables, then storing the sum in c)
void add_matrices(int* a, int* b, int* c)
{
	for (int i = 0; i < 9; i++)
	{
		*c = *a + *b;

		a++;
		b++;
		c++;
	}
}

//Q6: print(10)
//print the matrix c by row in the following format using tabs (\t) using pointers:
// X     X     X
// X     X     X
// X     X     X
//(hint: printf( "%d\t", _ ))
void print_sum_matrix(int* c)
{
	printf("\nMatrix c:\n");
	for (int row = 0; row < 3; row++)
	{
		for (int col = 0; col < 3; col++)
		{
			printf("%d\t", *c);
			c++;
		}
		printf("\n");
	}
	printf("\n");
}