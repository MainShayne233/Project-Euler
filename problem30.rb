# Version 1.0

=begin
list = Array.new

for i in 2..999999
	splitArray = i.to_s.split(//)
	tempTotal = 0
	for j in splitArray
		tempTotal += (j.to_i)**5
	end
	if tempTotal == i
		list.push(tempTotal)
	end
end

total = 0

for num in list
	total += num
end

puts total
=end

def sum_of_digits_to_fifth?(num)
	num == num.to_s.split(//).map{|i| (i.to_i)**5}.reduce(:+)
end



def problem30()
	sum = 0
	for i in 4000..200000; sum += i if sum_of_digits_to_fifth?(i); end
	return sum
end

puts problem30()
