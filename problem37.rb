require 'Prime'

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



