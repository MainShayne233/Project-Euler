def places(x)
	placesexpo = 0
	until x % (10**placesexpo) == x
		placesexpo += 1
	end
	return placesexpo
end

def hundreds_place(x)
	hundred = 100
	until hundred > x
		hundred += 100
	end
	return (hundred-100)/100
end
#hundreds = hundreds_place(num)



def tens_place(x,y)
	x -= 100*y
	ten = 10
	until ten > x
		ten += 10
	end
	return (ten-10)
end
#tens = tens_place(num, hundreds)


def ones_place(x,y,z)
	x -= 100*y
	x -= 10*z
	ones = 0
	until ones >= x
		ones += 1
	end
	return ones
end


def spelled(x)
	return "" if x == 0
	return "one" if x == 1
	return "two" if x == 2
	return "three" if x == 3
	return "four" if x == 4
	return "five" if x == 5
	return "six" if x == 6
	return "seven" if x == 7
	return "eight" if x == 8
	return "nine" if x == 9
	return "ten" if x == 10
	return "eleven" if x == 11
	return "twelve" if x == 12
	return "thirteen" if x == 13
	return "fourteen" if x == 14
	return "fifteen" if x == 15
	return "sixteen" if x == 16
	return "seventeen" if x == 17
	return "eighteen" if x == 18
	return "nineteen" if x == 19
	return "twenty" if x== 20
	return "thirty" if x == 30
	return "forty" if x == 40
	return "fifty" if x == 50
	return "sixty" if x == 60
	return "seventy" if x == 70
	return "eighty" if x == 80
	return "ninety" if x == 90
end

words = Array.new

num = 1

until num == 1000
	if (num > 0) && (num < 10)
		words[num-1] = spelled(ones_place(num, 0, 0))
		#puts words[num-1] + " " + words[num-1].count("abcdefghijklmnopqrstuvwxyz").to_s
	elsif (num > 9) && (num < 20)
		words[num -1] = spelled(num)
		#puts words[num-1] + " " + words[num-1].count("abcdefghijklmnopqrstuvwxyz").to_s
	elsif (num > 19) && (num < 100)
		words[num-1] = spelled(tens_place(num, 0)) + " " + spelled(num - tens_place(num, 0))
		#puts words[num-1] + " " + words[num-1].count("abcdefghijklmnopqrstuvwxyz").to_s
	elsif (num > 99) && (num < 1000)
		if (num - 100*hundreds_place(num)) == 0
			words[num-1] = spelled(hundreds_place(num)) + " hundred " + spelled(tens_place(num, hundreds_place(num))) + " " + spelled((num - tens_place(num, 0)))
		elsif (tens_place(num, hundreds_place(num)) == 10) && ((num % 10) != 0)
			words[num-1] = spelled(hundreds_place(num)) + " hundred and " + spelled(num - hundreds_place(num)*100)
		else
			words[num-1] = spelled(hundreds_place(num)) + " hundred and " + spelled(tens_place(num, hundreds_place(num))) + " " + spelled((num - tens_place(num, 0)))
		end
		#puts words[num-1] + " " + words[num-1].count("abcdefghijklmnopqrstuvwxyz").to_s
	end
	
	num += 1
end

words[num-1] = "one thousand"

sum = 0

#puts words

test = 0

words.each do |val|
	sum += val.count("abcdefghijklmnopqrstuvwxyz")
	puts val + " " + val.count("abcdefghijklmnopqrstuvwxyz").to_s + " " + sum.to_s
	test += 1
end

puts sum
#puts test









