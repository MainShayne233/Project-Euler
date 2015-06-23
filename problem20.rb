factorial = 1

for i in 1..100
	factorial *= i
end

numarray = factorial.to_s.split(//).map{|chr| chr.to_i}

sum = 0

for i in numarray
	sum += i
end

puts sum