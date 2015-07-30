require 'Prime'

# Only possible layouts because there must be 3 repeating digits and the last digit cannot be one
	fiveDigitLayouts = [[1,-1,-1,-1,1],
					  [-1,1,-1,-1,1],
					  [-1,-1,1,-1,1],
					  [-1,-1,-1,1,1]]

	sixDigitLayouts = [[1,1,-1,-1,-1,1],
					  [1,-1,1,-1,-1,1],
					  [1,-1,-1,1,-1,1],
					  [1,-1,-1,-1,1,1],
					  [-1,1,1,-1,-1,1],
					  [-1,1,-1,1,-1,1],
					  [-1,1,-1,-1,1,1],
					  [-1,-1,1,1,-1,1],
					  [-1,-1,1,-1,1,1],
					  [-1,-1,-1,1,1,1]]

def numberGenerator(number, layout)
	tempLayout = Array.new(layout)
	digits = number.to_s.split(//).map! {|digit| digit.to_i}
	for digit in digits
		tempLayout[tempLayout.index(1)] = digit
	end
	return tempLayout
end

def repeatingGenerator(repeating, layout)
	tempLayout = Array.new(layout)
	while tempLayout.count(-1) > 0
		tempLayout[tempLayout.index(-1)] = repeating
	end
	return tempLayout.join.to_i
end

def famileSize(number, layout)
	primes = 0
	for repeating in 0..9
		if repeatingGenerator(repeating, numberGenerator(number, layout)).prime?
			primes += 1
		end
	end
	return primes
end


def problem51(fiveDigitLayouts, sixDigitLayouts)
	11.step(999,2) do |i|
		layouts = i < 100 ? fiveDigitLayouts : sixDigitLayouts
		for layout in layouts
			if famileSize(i, layout) == 8
				for repeat in 0..2
					if repeatingGenerator(repeat, numberGenerator(i, layout)).prime?
						return repeatingGenerator(repeat, numberGenerator(i, layout))
					end
				end
			end
		end
	end
end

puts problem51(fiveDigitLayouts, sixDigitLayouts)



