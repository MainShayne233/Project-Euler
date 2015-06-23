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