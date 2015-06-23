a = 3
while a < 1000
	b = 4
	while b < 1000
		c = ((a**2)+(b**2))**(0.5)
		if (a+b+c==1000)
			puts a, b, c a*b*c
		end
		b += 1
	end
	a +=1
end