# Version 1.0
=begin
largest = 0
num1 = 100
while num1 < 1000
num2 = 100
	while num2 < 1000
		work = num1*num2
		if work.to_s == (work.to_s.reverse!)
			if work > largest
				largest = work
			end
		end
	num2 += 1
	end
num1 += 1
end
puts largest
=end

#Version 2.0
=begin
def problem4()
	largest = 0
	100.step(999,1) {|i| 100.step(999,1) {|j| largest = i*j if (i*j).to_s == (i*j).to_s.reverse and i*j > largest}}
	return largest
end
=end

# Version 3.0, faster
# def problem4
# 	a = []
# 	(100..999).each do |x|
# 		(x..999).each {|y| a.push(x*y)}
# 	end
# 	a.sort!.reverse!
# 	for p in a
# 		return p if p.to_s == p.to_s.reverse
# 	end
# end

# Version 4.0
def problem4
	(100..999).map{|i| (i..999).map{|j| j*i} }.flatten.sort.reverse_each {|k| return k if k.to_s == k.to_s.reverse}
end

puts problem4