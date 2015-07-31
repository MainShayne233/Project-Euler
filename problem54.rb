deals = File.readlines('p054_poker.txt')

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
	return true if hand.map {|i| i = i[0]} == %w(2 3 4 5 A)
	return true if hand.map {|i| i = i[0]} == %w(A J K Q T)
	tempHand = Array.new(hand)
	tempHand.map! {|card| card = card[0]}
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
			tempHand[card] = 0
		else
			tempHand[card] =tempHand[card].to_i
		end
	end
	for card in 0..tempHand.count-2
		return false if (tempHand[card+1] - tempHand[card]) != 1
	end
	return true
end

def fourOfKind?(hand)
	return hand.map {|i| i = i[0]}.uniq.count > 2 ? false : true
end






def handValue(hand)
