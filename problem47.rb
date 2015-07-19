require 'prime'


def primeFactorArrayMaker(num)
	primeFactorArray = Array.new
	Prime.each do |prime|
		if num % prime == 0
			primeFactorArray.push(prime)
			until num % prime != 0
				num /= prime
			end
			if num == 1
				return primeFactorArray
			end
		end
	end
end



def problem47()
	innaRow = 0
	for number in 3..1000000
		if number.prime?
			innaRow = 0
		elsif primeFactorArrayMaker(number).count == 4
			innaRow += 1
		else
			innaRow = 0
		end
		if innaRow == 4
			return number-3
		end
	end
end

puts problem47()