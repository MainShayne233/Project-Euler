x = 0.0
i = 1.0
while i < 1000.0
	if (i % 3.0 == 0) || (i % 5.0 == 0)
		x = x + i
	end
	i = i+1.0
end
puts x