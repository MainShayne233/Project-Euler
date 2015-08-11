# Version 1.0

=begin
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
=end

# Version 2.0

def problem29()
	expoList = Array.new
	for a in 2..100; for b in 2..100; expoList.push(a**b); end; end
	return expoList.uniq.count
end

puts problem29
