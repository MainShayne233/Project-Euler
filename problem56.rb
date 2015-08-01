maxSum = 0
for a in 1..100
	for b in 1..100
		maxSum = (a**b).to_s.split(//).map {|i| i = i.to_i}.inject(:+) if (a**b).to_s.split(//).map {|i| i = i.to_i}.inject(:+) > maxSum
	end
end
puts maxSum