zeroToNine = Array.new
for i in 0..9
	zeroToNine.push(i)
end

permList = zeroToNine.permutation.to_a.reject {|x| x[0] == 0}

sum = 0

def primeCheck(permList)
	sum = 0
	for perm in permList
		if ((perm[1..3].join.to_i % 2) == 0)
			if ((perm[2..4].join.to_i % 3) == 0)
				if ((perm[3..5].join.to_i % 5) == 0)
					if ((perm[4..6].join.to_i % 7) == 0)
						if ((perm[5..7].join.to_i % 11) == 0)
							if ((perm[6..8].join.to_i % 13) == 0)
								if ((perm[7..9].join.to_i % 17) == 0)
									puts perm.join
									sum += perm.join.to_i
								end
							end
						end
					end
				end
			end
		end
	end
	return sum
end
testArray = Array.new
testArray = [[1, 4, 0, 6, 3, 5, 7, 2, 8, 9]]

puts primeCheck(permList)