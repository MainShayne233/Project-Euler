encryptedMessage = File.readlines('p059_cipher.txt').join.split(",").map {|i| i.to_i}
print encryptedMessage.map {|i| i.chr}

for first in 97..122
	for second in 97..122
		for third in 97..122
			key = Array.new([first, second, third])
			index = 0
			while index < encryptedMessage.count
				for value in key
					encryptedMessage[index] += value
					index += 1
				end
			end
			print encryptedMessage
		end
	end
end