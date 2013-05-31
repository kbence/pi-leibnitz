
def pi():
	i, sum = 0, 0.0
	while i < 1e8:
		sum += 4.0 / (i * 2 + 1) * (-1 if i % 2 else 1)
		i += 1
	return sum

print "%.15f" % (pi())

