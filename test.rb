hand = %w(5D 9C 4D 4C 7S)
hand2 = ["JD", "JD", "JH", "7S", "8D"]


def faceValues(hand)
	tempHand = Array.new(hand.map {|i| i = i[0]})
	for card in 0..tempHand.count-1
		case tempHand[card]
		when "T"
			tempHand[card] = 10
		when "J"
			tempHand[card] = 11
		when "Q"
			tempHand[card] = 12
		when "K"
			tempHand[card] = 13
		when "A"
			tempHand[card] = 14
		else
			tempHand[card] =tempHand[card].to_i
		end
	end
	return tempHand
end

def straight?(hand)
	return [1, 15] if hand.map {|i| i = i[0]} == %w(2 3 4 5 A)
	return [1, 60] if hand.map {|i| i = i[0]} == %w(A J K Q T)
	tempHand = Array.new(faceValues(hand))
	tempHand.sort!
	for card in 0..tempHand.count-2
		return false if (tempHand[card+1] - tempHand[card]) != 1
	end
	return [1, tempHand.inject(:+)]
end

print onePair?(hand)