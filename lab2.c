#include <stdio.h>

int main ()
{
	int mass[12] = {7, 32, 2, 34, 232, 128, 35, 1, 2, 3, 200, 165};
	int count = 0;
	int n;
	int i = 0;
	int j;
	for (j=0; j < 12; j++)
	{
		while(i<= 255)
		{
			for (n = i; n < i+16; n+=2)
			{
				if (mass[j] == n)
				{
					count +=1;
				}
			}
			i=n+16;
		}
		i=0;
	}

printf("Ответ: %d \n", count);
	return 0;
}
