# Version 1.0

=begin
def isntTrivial(num, den)
	numSplit = num.to_s.split(//)
	denSplit = den.to_s.split(//)

	if numSplit[1] == denSplit[0]
		if (numSplit[0].to_f/denSplit[1].to_f == num.to_f/den.to_f)
			if (num % numSplit[1].to_i != 0) or (den % denSplit[0].to_i != 0)
				return true
			end
		end
	end
	return false
end

def simplify(numer1, denom1)
	puts "#{numer1}/#{denom1}"
  return Rational(numer1, denom1)
end


product = 1

for num in 10..99
	for den in 10..99
		if isntTrivial(num, den)
			product *= simplify(num, den)
		end
	end
end

puts product
=end

# Version 2.0

def fraction_arrange(f, cnum)
	f.push(cnum,["#{f[0]}#{cnum}".to_i,"#{cnum}#{f[1]}".to_i],["#{cnum}#{f[0]}".to_i,"#{f[1]}#{cnum}".to_i])
	i=3
	until i == f.count; if f[i][0] >= f[i][1]; f.delete_at(i); else; i += 1; end; end
	return f
end

def isnt_trivial?(fs)
	return false if fs.count < 4
	for f in 3..fs.count-1
		return [fs[f][0],fs[f][1]] if Rational(fs[f][0],fs[f][1]) == Rational(fs[0])/Rational(fs[1])
	end
	return false
end

def problem33()
	nonTrivials = Array.new
	digitsArray = (1..9).to_a.concat((1..9).to_a).permutation(2).to_a.uniq
	for fraction in digitsArray
		for i in 0..9
			tempArrange = fraction_arrange(fraction, i)
			frac = isnt_trivial?(tempArrange)
			nonTrivials.push(frac) if frac
		end
	end
	nonTrivials.uniq!.map!{|i| Rational(i[0],i[1])}
	return nonTrivials.reduce(:*).to_s.split("/")[1].to_i
end
puts problem33
