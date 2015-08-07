require 'prime'

def concateCheck(prime1, prime2)
	return true if "#{prime1}#{prime2}".to_i.prime? and "#{prime2}#{prime1}".to_i.prime?
	return false
end

def problem60()
	primeArray = Array.new
	Prime.each(10000) {|prime| primeArray.push(prime)}
	concateArray = Array.new
	for prime in 0..primeArray.count-5
		

end
