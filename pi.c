#include <stdio.h>

double pi()
{
	double sum = 0;
	int i;

	for (i = 0; i < 1e8; i++) {
		sum += 4.0 / (i * 2 + 1) * (i % 2 ? -1 : 1);
	}

	return sum;
}

int main()
{
	printf("%.15f\n", pi());
	return 0;
}

