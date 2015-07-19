<<<<<<< HEAD
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
	
=======
puts "Enter the length of one side: "
side = gets.to_i


list = []

for i in 1..side+1
	list.push(1)
end

multiplier = 1

for row in 0..side-1
	list.push(1)
	for i in 1..side
		list.push(list[i+(side+1)*row]+list[side+i+(side+1)*row])
	end
end
	
puts "\nThe amount of possible moves is #{list.last}"
>>>>>>> a7d8ad37e3da88bdcf601d47765064b21f819e9b
