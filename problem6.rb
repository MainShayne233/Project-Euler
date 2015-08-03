# Version 1.0

=begin
counter1 = 1
counter2 = 1
x = 0
y1 = 0
y2 = 0
while counter1 <= 100
	x += (counter1**2)
	counter1 += 1
end
puts x

while counter2 <= 100
	y1 += counter2
	counter2 += 1
end
y2 = y1**2
puts y2
puts y2 - x
=end

#Version 2.0

puts (1..100).to_a.inject(:+)**2 - (1..100).to_a.map {|i| i**2}.inject(:+)