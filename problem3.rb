require 'prime'

#Version 1.0
=begin
orig = 600851475143
k = 2
largest = 0
while k <= (orig)
j = 2
i = 0
	if orig % k == 0
		while j < (k)
			if k % j == 0
				i = 1
			end
			j = j+1
		end
			if i == 0
				puts k
				largest = k
			end
	end
k = k+1
end
puts largest
=end

#Version 2.0

=begin
def problem3()
	for prime in Prime.each(600851475143.0**(0.5)).to_a.reverse!; return prime if 600851475143%prime == 0; end
end

puts problem3
=end

# Version 3.0, much faster

def problem3()
	n = 600851475143
	Prime.each do |p|
		while n % p == 0
			n /= p
			return n if Prime.prime?(n)
		end
	end
end

puts problem3()

