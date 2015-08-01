

def handDeal(deal, player)
	tempDeal = Array.new(deal.split)
	return player == "left" ? tempDeal[0..4] : tempDeal[5..9]
end

def royalFlush?(hand)
	return false if hand.map {|i| i = i[1]}.uniq.count > 1
	return hand.map {|i| i = i[0]}.sort != %w(A J K Q T) ? false : true
end

def straightFlush?(hand)
	return false if hand.map {|i| i = i[1]}.uniq.count > 1
	tempHand = Array.new(faceValues(hand))
	tempHand.sort!
	return [1, 15] if tempHand == [2, 3, 4, 5, 14]
	for card in 0..tempHand.count-2
		return false if (tempHand[card+1] - tempHand[card]) != 1
	end
	return [1, tempHand.inject(:+)]
end

def fourOfKind?(hand)
	return false if hand.map {|i| i = i[0]}.uniq.count != 2
	for card in hand.map {|i| i = i[0]}.uniq
		if hand.map {|i| i = i[0]}.count(card) == 4
			return [1, faceValues([card]).inject(:+)]
		end
	end
	return false
end

def fullHouse?(hand)
	return false if hand.map {|i| i = i[0]}.uniq.count != 2
	tempHand = Array.new(faceValues(hand))
	if tempHand.count(tempHand.uniq[0]) == 2 && tempHand.count(tempHand.uniq[1]) == 3
		return [1, faceValues([tempHand]).inject(:+) + tempHand.uniq[1].to_i]
	elsif tempHand.count(tempHand.uniq[0]) == 3 && tempHand.count(tempHand.uniq[1]) == 2
		return [1, faceValues([tempHand]).inject(:+) + tempHand.uniq[1].to_i]
	end
	return false
end

def flush?(hand)
	return hand.map {|i| i = i[1]}.uniq.count == 1 ? [1, faceValues(hand).inject(:+)] : false
end

def straight?(hand)
	return [1, 15] if hand.map {|i| i = i[0]}.sort == %w(2 3 4 5 A).sort
	return [1, 60] if hand.map {|i| i = i[0]}.sort == %w(A J K Q T).sort
	tempHand = Array.new(faceValues(hand))
	tempHand.sort!
	for card in 0..tempHand.count-2
		return false if (tempHand[card+1] - tempHand[card]) != 1
	end
	return [1, tempHand.inject(:+)]
end


def threeOfKind?(hand)
	return false if hand.map {|i| i = i[0]}.uniq.count > 3
	tempHand = Array.new(hand.map {|i| i = i[0]}.uniq)
	for card in tempHand
		return [1, faceValues([card]).inject(:+)] if hand.map {|i| i = i[0]}.count(card) == 3
	end
	return false
end

def twoPairs?(hand)
	pairs = 0
	pairSum = 0
	tempHand = Array.new(faceValues(hand))
	for card in tempHand.uniq
		if tempHand.count(card) > 1
			pairs += 1
			pairSum += card
			return [1, pairSum] if pairs > 1
		end
	end
	return false
end

def onePair?(hand)
	tempHand = Array.new(faceValues(hand))
	for card in tempHand.uniq
		return [1, card.to_i] if tempHand.count(card) > 1
	end
	return false
end


def handValue(hand)
	return [9, 1] if royalFlush?(hand)
	return [8, straightFlush?(hand)[1]] if straightFlush?(hand)
	return [7, fourOfKind?(hand)[1]] if fourOfKind?(hand)
	return [6, fullHouse?(hand)[1]] if fullHouse?(hand)
	return [5, flush?(hand)[1]] if flush?(hand)
	return [4, straight?(hand)[1]] if straight?(hand)
	return [3, threeOfKind?(hand)[1]] if threeOfKind?(hand)
	return [2, twoPairs?(hand)[1]] if twoPairs?(hand)
	return [1, onePair?(hand)[1]] if onePair?(hand)
	return 0
end

def highestCardValue(leftHand, rightHand)
	tempLeft = Array.new(leftHand.map {|i| i = i[0]})
	tempRight = Array.new(rightHand.map {|i| i = i[0]})
	tempArray = [tempLeft, tempRight]
	for tempHand in tempArray
		for card in 0..4
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
	end
	tempArray[0].sort!.reverse!; tempArray[1].sort!.reverse!
	for card in 0..4
		return "left" if tempArray[0][card] > tempArray[1][card]
		return "right" if tempArray[0][card] < tempArray[1][card]
	end
	return "draw"
end

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


def problem54()
	leftPlayerWins = 0
	deals = File.readlines('p054_poker.txt')
	for deal in deals
		leftPlayer = handDeal(deal, "left")
		rightPlayer = handDeal(deal, "right")
		if handValue(leftPlayer)[0] > handValue(rightPlayer)[0]
			leftPlayerWins += 1 
		elsif handValue(leftPlayer)[0] == handValue(rightPlayer)[0]
			if handValue(leftPlayer)[1] > handValue(rightPlayer)[1]
				leftPlayerWins += 1
			elsif handValue(leftPlayer)[1] == handValue(rightPlayer)[1]
				if highestCardValue(leftPlayer, rightPlayer) == "left"
					leftPlayerWins += 1
				end
			end
		end
	end
	return leftPlayerWins
end

puts problem54