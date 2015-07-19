def firstSoManyPentNumbers()
	pentArray = Array.new
	for i in 1..3000
		pentArray.push(i*(3*i-1)/2)
	end
	return pentArray
end

pentArray = firstSoManyPentNumbers()

def loop(pentArray)
	for i in 0..pentArray.length-2
		for j in i+1..pentArray.length-1
			if isPent(pentArray[i] + pentArray[j]) and isPent(pentArray[j] - pentArray[i])
					puts "#{pentArray[j]} + #{pentArray[i]} = #{pentArray[j]+pentArray[i]}"
					puts "#{pentArray[j]} - #{pentArray[i]} = #{pentArray[j]-pentArray[i]}"
			end
		end
	end
end


def isPent(num)
	inversePent = ((((24*num+1)**(0.5))+1)/6)
	if inversePent == inversePent.to_i
		return true
	end
	return false
end

loop(pentArray)





