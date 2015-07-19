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