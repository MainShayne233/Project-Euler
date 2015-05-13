moves = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
puts moves.count
movesum = 0

def ten_moves?
	worksum = 0
	self.each do |val|
		worksum += val
	end
	return true if worksum == 10
end
counter = 0
until moves[40] == 1
	moves[counter] = 1
	