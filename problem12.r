trinum = 0
x = 1
divisors = 0

while divisors < 500
	trinum = 0
	for i in 0..x
		trinum += i
	end
	#puts trinum
	check = 1
	divisors = 0
	while check <= trinum
		if trinum % check == 0
			divisors += 1
		end
		check += 1
	end
	puts "Divisors = #{divisors}"
	puts "trinum = #{trinum}"
	x += 1


end
puts trinum
puts divisors