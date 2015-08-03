def problem9()
	for a in 1..500
		for b in (a+1)..500; c = (a**2 + b**2)**(0.5)
			return (a*b*c).to_i if a+b+c == 1000
		end
	end
end

puts problem9