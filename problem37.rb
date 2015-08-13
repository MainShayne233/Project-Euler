require 'Prime'

#Version 1.0

=begin
def truncatableRight(num)
	num = num.to_s
	while num.length > 1
		num = num[0...(num.length-1)]
		if !(num.to_i.prime?)
			#puts "#{num} isn't prime"
			return false
		else
			#puts "#{num} is prime"
		end
	end
	if !(num.to_i.prime?)
		#puts "#{num} isn't prime"
		return false
	else
		return true
	end
end


def truncatableLeft(num)
	num = num.to_s
	while num.length > 1
		num = num[1...(num.length)]
		if !(num.to_i.prime?)
			#puts "#{num} isn't prime"
			return false
		else
			#puts "#{num} is prime"
		end
	end
	if !(num.to_i.prime?)
		#puts "#{num} isn't prime"
		return false
	else
		return true
	end
end


def primeloop()

	list = Array.new

	sum = 0

	Prime.each(1000000) do |prime|
		if prime == 2 or prime == 3 or prime == 5 or prime == 7
			
		elsif truncatableLeft(prime) and truncatableRight(prime)
			sum += prime
			list.push(prime)
		end
		if list.count > 10
			break
		end
	end
	return sum
end


puts primeloop()
=end

# Version 2.0

def trunctable_both_ways?(n)
	for l in 1..n.to_s.length-1
		return false if !n.to_s[l..n.to_s.length-1].to_i.prime?
	end
	for r in 2..n.to_s.length
		return false if !n.to_s[0..-r].to_i.prime?
	end
	true
end

def problem37()
	trunctablePrimes = Array.new
	Prime.each do |prime|
		trunctablePrimes.push(prime) if trunctable_both_ways?(prime) and prime > 7
		return trunctablePrimes.reduce(:+) if trunctablePrimes.count == 11
	end
end

puts problem37



