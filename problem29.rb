list = Array.new

for a in 2..100
	for b in 2..100
		tempValue = a**b
		switch = 1
		for i in list
			if tempValue == i
				switch = 0
			end
		end
		if switch == 1
			list.push(a**b)
		end
	end
end


puts list.count
