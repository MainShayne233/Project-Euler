def decrypt(cipher, key)
	decrypted = Array.new()
	keyArray = key.split(//).map{|i| i.ord}
	index = 0
	while true
		for i in 0..2
			return index if cipher[index].nil?
			decrypted.push(keyArray[i] ^ cipher[index])
			index += 1
			return decrypted if index > cipher.count-1
		end
	end
end



def problem59()
cipher = File.read('p059_cipher.txt').split(",").map {|i| i.to_i}
	for firstChar in ("a".."z")
		for secondChar in ("a".."z")
			for thirdChar in ("a".."z")
				output = decrypt(cipher, "#{firstChar}#{secondChar}#{thirdChar}")
				if output.map{|i| i.chr}.join.split.count("the") > 4
					return output.reduce(:+)
				end
			end
		end
	end
end

puts problem59