def c_frac(s)
	m = 0
	d = 1
	a_orig = Math.sqrt(s).to_i
	a = a_orig
	period = 0
	until a == 2*a_orig
		m = d*a-m
		d = (s - (m**2))/d
		a = ((a_orig + m)/d).to_i
		period += 1
	end
	period
end

count = 0

for i in 1..10000
	if Math.sqrt(i) % 1 != 0
		count += 1 if c_frac(i) % 2 == 1
	end
end

puts count
