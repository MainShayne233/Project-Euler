require 'prime'

#Version 1.0

=begin
counter = 3
prime = 0
primecounter = 1
while primecounter < 10001
	checker = 3
	indicator = 0
	while checker < counter
		if (counter % checker == 0)
			indicator = 1
		end
		checker += 2
	end
	if indicator == 0
		primecounter +=1
		prime = counter
		puts prime
		puts primecounter
	end
	counter += 2
end
puts prime
=end

#Version 2.0

puts Prime.take(10001).to_a.last