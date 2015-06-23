start = 2
longeststart = 0
longestcount = 0

while start < 1000000
	workStart = start
	counter = 1
	until workStart == 1
		if workStart.even?
			workStart = workStart/2
			counter += 1
		elsif workStart.odd?
			workStart = 3*workStart+1
			counter +=1
		end
	end
	if counter > longestcount
		longestcount = counter
		longeststart = start
	end
	puts "start = #{start}"
	start += 1
end
puts "longeststart = #{longeststart}"
puts "longestcount = #{longestcount}"

