hand = ["7D", "2S", "5D", "3S", "AC"]
hand2 = ["9D", "9H", "9C", "9S", "KD"]

def fourOfKind?(hand)
	return hand.map {|i| i = i[0]}.uniq.count > 2 ? false : true
end



puts fourOfKind?(hand2)

