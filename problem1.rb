def problem1()
	return (1..999).to_a.select {|i| i % 3 == 0 or i % 5 == 0}.reduce(:+)
end

puts problem1()