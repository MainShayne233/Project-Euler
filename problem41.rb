require 'prime'

def pandigitalConstructor(length)
	digitsArray = Array.new
	for i in 1..length
		digitsArray.push(i)
	end
	permArray = digitsArray.permutation.to_a
	permArray.reverse!
	return permArray
end

largest = 0

for length in 1..9
	PanArray = pandigitalConstructor(length)
	for each in PanArray
		tempNum = each.join.to_i
		if tempNum.prime?
			if tempNum > largest
				largest = tempNum
			end
		end
	end
end

puts largest