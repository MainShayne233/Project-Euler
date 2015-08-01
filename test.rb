n, d, c = 3, 2, 0
1000.times do
	n, d = n+d*2, n+d
	c += 1 if n.to_s.length > d.to_s.length
end
puts c
