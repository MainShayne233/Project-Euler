def problem31()
	target = 200
	coinSizes = [1,2,5,10,20,50,100,200]
	ways = Array.new(target+1, 0)
	ways[0]=1
	for i in 0..coinSizes.count-1
		for j in coinSizes[i]..target
			ways[j] += ways[j - coinSizes[i]]
		end
	end
	return ways.last
end
puts problem31()