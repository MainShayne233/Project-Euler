f = File.open("p042_words.txt")
string = f.read
wordList = string.split(",")
for word in 0..wordList.count-1
	wordList[word] = wordList[word].chomp('"').reverse.chomp('"').reverse
end



def triangleNumberArray()
	triangleNumberList = Array.new
	for i in 1..50
		triangleNumberList.push((i)*(i+1)/2)
	end
	return triangleNumberList
end

def valueFinder(word)
	sum = 0
	for i in 0..(word.length-1)
		sum += word[i].ord-64
	end
	return sum
end

triangleList = triangleNumberArray()

amount = 0

for word in wordList
	tempValue = valueFinder(word)
	for num in triangleList
		if tempValue == num
			amount += 1
			break
		end
	end
end

puts amount