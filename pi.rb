
def pi
	sum = 0
	1e8.to_i.times do |i|
		sum += 4.0 / (i * 2 + 1) * (i % 2 == 1 ? -1 : 1)
	end
	sum
end

print pi

