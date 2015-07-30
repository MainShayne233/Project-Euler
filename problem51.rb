require 'Prime'

def fixedSwapArray(digits)
	chooseFrom = Array.new(digits-2) {'F'}
	(digits-1).times do 
		chooseFrom.push('S')
	end
	chooseFrom = chooseFrom.permutation(digits-1).to_a.uniq!.map! {|set| set.push('F')}
	return chooseFrom
end

def valueConstruct(layout, fixedNumber, swapNumber)
	fixedNumberArray = fixedNumber.to_s.split(//).map! {|element| element.to_i}
	finalNumber = Array.new(layout)
	while finalNumber.count('F') > 0
		finalNumber[finalNumber.index('F')] = fixedNumberArray[0]
		fixedNumberArray.shift
	end
	while finalNumber.count('S') > 0
		finalNumber[finalNumber.index('S')] = swapNumber
	end
	return finalNumber.join.to_i
end

#fixedNumber in (10**(layout.count('F')-1))..(10**layout.count('F'))-1


def problem51()
	digits = 6
	while true
		templateArray = fixedSwapArray(digits)
		for layout in templateArray
			for fixedNumber in 100000..130000
				#puts fixedNumber
				strikes = 0
				for swapNumber in 0..9
					puts "fixed: #{fixedNumber} swap: #{swapNumber} layout: #{layout} result: #{valueConstruct(layout, fixedNumber, swapNumber)}"
					if !valueConstruct(layout, fixedNumber, swapNumber).prime?
						strikes += 1
					end
					if strikes > 2
						break
					end
				end
				if strikes <= 2
					return valueConstruct(layout, fixedNumber, swapNumber)
				end
			end
		end
		digits += 1
		puts digits
	end
end

puts problem51()

=begin
for i in 0..9
	puts valueConstruct(['F', 'F', 'F', 'S', 'F'], 1000, i)
end
=end