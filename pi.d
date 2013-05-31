import std.stdio;

double pi()
{
	double sum = 0;
	
	foreach (i; 0 .. 100_000_000) {
		sum += 4.0 / (i * 2 + 1) * (i % 2 ? -1 : 1);
	}

	return sum;
}

void main()
{
	writefln("%.15f", pi());
}

