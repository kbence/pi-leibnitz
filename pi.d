import std.stdio;

double pi()
{
	double sum = 0;
	int i;
	
	while (i < 1e8) {
		sum += 4.0 / (i * 2 + 1) * (i % 2 ? -1 : 1);
		i++;
	}

	return sum;
}

void main()
{
	writefln("%.15f", pi());
}

