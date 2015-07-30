def sameDigits(number)
	for multipler in 2..6
		if number.to_s.split(//).map! {|i| i.to_i}.sort! != (number*multipler).to_s.split(//).map! {|i| i.to_i}.sort!
			return false
		end
	end
	return true
end

def problem52()
	number = 1
	while true
		if sameDigits(number)
			return number
		end
		number += 1
	end
end

puts problem52
