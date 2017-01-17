// Tarek Salama
// My added comments are displayed as *** ... ***

#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>  // include srand function

#pragma warning(disable : 4996) 

#define ALPHA 15
#define BETA 15 // *** Q1.2 fix ***
#define maximum(x, y) (x > y) ? x : y
#define mac(a, b) (a*a + b*b - 2 * a*b)

// int BETA = 15;	*** removed ***

int func(int a, int b) {
	return (a*a + b*b - 2 * a*b);
}


// Q1.1: Compare and contrast the 2 arrays, alpha and beta.  Explain why beta failed during the compilation.  [5pts]
// Q1.2: Fix the compilation error. [5pts]  
int case_one() {
	int alpha[ALPHA];
	int beta[BETA];		// Q1.2: Fix the error

	printf("\n\nQ1: Please compare and contrast the 2 arrays.  Explain why there was a compilation error for beta. [5pts]\n");

	// Q1.1 Output your solution to the console using printf. 
	printf("Solution: The size of an array must be constant - for example, by using a macro, just as the alpha array does. \n");
	printf("The correct size of array beta is %d.", sizeof(beta)/sizeof(beta[0]));

	return sizeof(beta);
}


// Q2: Study the code and determine why the result is not 6.  
// Then address (or fix) the problem in this function without modifying the the macro so that the correct output 6 is generated [10pts]
// [HINT: You can additional variables within the function.]
int case_two(int x, int y) {
	int i = x, j = y;
	int result;
	int k = j + 1; // *** added variable: increment of j ***

	result = maximum(i, k); // *** ++j changed to k to avoid double increment. Using ++j increments in first the comparison then determination of the max macro. ***
	printf("\n\nQ2: If x = %d and ++y = %d, then the maximum value of these 2 numbers is %d.", x, (++y), result);

	return result;
}


// Q3: Execute the following code on a Visual Studio IDE and then copy Q3 output to actualResult. [10pts]
void case_three(int x, int y, char *actualResult) {
	int i, j, s, t;

	s = i = x;	// initialize variables with value from x
	t = j = y;  // initialize variables with value from y

				// Copy the output to actualResult below... 
	printf("\n\n");
	printf("Q3: Result from func(x, y) = %d and mac(x, y) = %d.", func(++i, ++j), mac(++s, ++t));

	// Replace the quoted content in the following strcpy statement with the actual output from last printf statement above.
	// Do not alter the text or add any spaces to it. 
	strcpy(actualResult, "Q3: Result from func(x,y) = 1 and mac(x, y) = 1.");
}


// Q4: Re-run the same code in case_three on GCC compiler and then assign the outputs to r1 and r2. [10pts]
//     The result must be exactly as shown on the screen; no extra spaces.  
void case_four(char *actualResult) {

	// Replace the content with the actual output. Do not alter the text or add any spaces to it. 
	strcpy(actualResult, "Q4: Result from func(x, y) = 1 and mac(x, y) = -27.");
}


// Q5: Explain why the output values of x and y can be different when the program is executed on an environment such as GCC. [5pts]
void case_five() {
	printf("\n\nQ5: Explain why the output values of x and y can be different when the program is executed on an environment such as GCC. [5pts]\n");

	// Q6. Output your solution to the console using printf.  
	printf("Solution: GCC's linker or preprocessor may handle these macros differently in that it may increment at different points, have different precedence rules, etc.");
}


// Q7: Explain why Visual Studio and GCC programming environments could possibly produce a different y value for the same program and for the same input. [5pts]
void case_six() {
	printf("\n\nQ6: Explain why Visual Studio and GCC programming environments could possibly produce a different y value for the same program and for the same input. [5pts]\n");

	// Q8. Output your solution to the console using printf.  
	printf("Solution: Their linkers or preprocessors may handle these macros (or any code) differently. For example: precedence, increments, semantic rules, etc.");
	printf(" Different compilers may produce different results because of their different predefined/custom extensions on top of native C++.\n");
}

// Do not alter the main function or any of the function headers.  
int main()
{
	int x = 4, y = 5;
	char result[1024];

	case_one();
	case_two(x, y);
	case_three(x, y, result);
	case_four(result);
	case_five();
	case_six();

	system("pause");
	return 0;
}