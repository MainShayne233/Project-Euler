def base10_to_binary(n)
	binary = Array.new
	until n < 1; binary.insert(0,n%2); n/=2; end
	binary.join
end

def is_palindrome?(n)
	n.to_s == n.to_s.reverse
end

def problem36()
	sum = 0
	for n in 1..1000000
		sum += n if is_palindrome?(n) and is_palindrome?(base10_to_binary(n))
	end
	sum
end

puts problem36
