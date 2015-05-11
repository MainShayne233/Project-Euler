trinum = 0
x = 1
divisors = 0

while divisors < 700
	trinum += x
	#puts trinum
	check = 1
	divisors = 1
	while check <= (trinum**(0.5))
		if trinum % check == 0
			divisors += 2
		end
		if ((trinum**(0.5)).to_i * (trinum**(0.5)).to_i) == trinum
		end
		check += 1
	end
	puts "x = #{x}"
	puts "trinum = #{trinum}"
	puts "Divisors = #{divisors}"
	x += 1


end
puts trinum
puts divisors