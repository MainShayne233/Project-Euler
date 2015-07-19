sum = 0
for i in 1..1000
	sum += i**i
end
sum = sum.to_s
puts sum[sum.length-10..sum.length-1]