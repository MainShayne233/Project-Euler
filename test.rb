require 'prime'

def trunctable_both_ways?(n)
	for l in 1..n.to_s.length-1
		return false if !n.to_s[l..n.to_s.length-1].to_i.prime?
	end
	for r in 2..n.to_s.length
		return false if !n.to_s[0..-r].to_i.prime?
	end
	true
end

def problem37()
	trunctablePrimes = Array.new
	Prime.each do |prime|
		trunctablePrimes.push(prime) if trunctable_both_ways?(prime) and prime > 7
		return trunctablePrimes.reduce(:+) if trunctablePrimes.count == 11
	end
end

puts problem37