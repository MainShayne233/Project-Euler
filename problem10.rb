require 'prime'
# Version 1.0

=begin
primesum = 2
#counter = 1
prime = 3
while prime < 2000000
	check = 3
	indicator = 0
	while check < prime
		if (prime % check == 0) && (prime != check)
			indicator = 1
		end
		check += 2

	end
	if indicator == 0
		puts prime
		primesum += prime
	end
	prime += 2
end
puts primesum
=end

# Version 2.0
def problem10()
	sum = 0; Prime.each(2000000) {|i| sum += i}; return sum
end

puts problem10