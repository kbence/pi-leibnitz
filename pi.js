
function pi()
{
	var sum = 0, i = 0;
	
	while (i < 1e8) {
		sum += 4.0 / (i * 2 + 1) * (i % 2 ? -1 : 1);
		i++;
	}

	return sum;
}

console.log(pi());

