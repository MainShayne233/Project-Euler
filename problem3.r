orig = 600851475143
k = 2
largest = 0
while k <= (orig)
j = 2
i = 0
	if orig % k == 0
		while j < (k)
			if k % j == 0
				i = 1
			end
			j = j+1
			#puts j
		end
			if i == 0
				puts k
				largest = k
			end
	end
k = k+1
end
puts largest