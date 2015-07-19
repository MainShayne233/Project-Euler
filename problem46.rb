require 'prime'



def goldbachComplient(num)
	Prime.each do |prime|
		if prime+2 == num
			return true
		elsif prime+2 > num
			return false
		end
		squareCounter = 1
		while true
			if prime+(2*(squareCounter**2)) == num
				return true
			elsif prime+(2*(squareCounter**2)) > num
				break
			end
			squareCounter += 1
		end
	end
end

counter = 35

while true
	if !counter.prime?
		if !goldbachComplient(counter)
			puts counter
			break
		end
	end
	counter += 2
end