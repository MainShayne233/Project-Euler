#Version 1.0

=begin
sum = 0


digits = [1, 2, 3, 4, 5, 6, 7, 8, 9]
digitsPerm = digits.permutation.to_a
productlist = Array.new

for perm in digitsPerm
	multiplicand = ("#{perm[0]}#{perm[1]}").to_i
	multiplier = ("#{perm[2]}#{perm[3]}#{perm[4]}").to_i
	product = ("#{perm[5]}#{perm[6]}#{perm[7]}#{perm[8]}").to_i
	if multiplicand*multiplier == product
		switch = 1
		for prod in productlist
			if product == prod
				switch = 0
			end
		end
		if switch == 1
			puts "#{multiplicand} * #{multiplier} = #{product}"
			sum += product
			productlist.push(product)
		end
	end
end

for perm in digitsPerm
	multiplicand = ("#{perm[0]}").to_i
	multiplier = ("#{perm[1]}#{perm[2]}#{perm[3]}#{perm[4]}").to_i
	product = ("#{perm[5]}#{perm[6]}#{perm[7]}#{perm[8]}").to_i
	if multiplicand*multiplier == product
		switch = 1
		for prod in productlist
			if product == prod
				switch = 0
			end
		end
		if switch == 1
			puts "#{multiplicand} * #{multiplier} = #{product}"
			sum += product
			productlist.push(product)
		end
	end
end



puts sum
=end

# Version 2.0

def problem32()
	solutions = Array.new
	digitsPermutated = (1..9).to_a.permutation(9).to_a
	for set in digitsPermutated
		if (set[0..1].join.to_i)*(set[2..4].join.to_i) == set[5..8].join.to_i
			solutions.push(set[5..8].join.to_i)
		end
		if (set[0..0].join.to_i)*(set[1..4].join.to_i) == set[5..8].join.to_i
			solutions.push(set[5..8].join.to_i)
		end
	end
	return solutions.uniq.reduce(:+)
end

puts problem32()

