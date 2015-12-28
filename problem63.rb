count = 0
i = 1
while true
	for j in 1..9
		count += 1 if (j**i).to_s.length == i
	end
	break if (j**i).to_s.length < i
	i += 1
end

puts count