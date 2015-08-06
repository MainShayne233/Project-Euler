#Version 1.0

=begin
factorial = 1

for i in 1..100
	factorial *= i
end

numarray = factorial.to_s.split(//).map{|chr| chr.to_i}

sum = 0

for i in numarray
	sum += i
end

puts sum
=end

# Version 2.0

class Integer
	def factorial
		f = 1; for i in 2..self; f*=i; end; return f;
	end
end

puts 100.factorial.to_s.split(//).map { |i| i.to_i }.inject(:+)