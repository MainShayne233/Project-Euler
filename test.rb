def valueConstruct(layout, fixedNumber, swapNumber)
	fixedNumberArray = fixedNumber.to_s.split(//).map! {|element| element.to_i}
	finalNumber = Array.new(layout)
	while finalNumber.count('F') > 0
		finalNumber[finalNumber.index('F')] = fixedNumberArray[0]
		puts layout
		return 0
		fixedNumberArray.shift
	end
	while finalNumber.count('S') > 0
		finalNumber[finalNumber.index('S')] = swapNumber
	end
	return finalNumber.join.to_i
end

valueConstruct(['F', 'F', 'F', 'S', 'F'], 1000, 0)