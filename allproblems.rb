require 'prime'

class Integer
	def factorial
		f=1; for i in 1..self; f*= i; end; f
	end
end

def factorial_sum(num)
	num.to_s.split(//).map{|i| (i.to_i).factorial}.reduce(:+)
end

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

def primeFactors(number)
	factorization = Hash.new
	Prime.each do |prime|
		factorization.merge!("#{prime}": 0)
		until number%prime != 0; factorization[:"#{prime}"] += 1; number /= prime; end
		return factorization if number == 1
	end
end

def sum_of_digits_to_fifth?(num)
	num == num.to_s.split(//).map{|i| (i.to_i)**5}.reduce(:+)
end

def problem1()
	return (1..999).to_a.delete_if {|i| i%3!=0 and i%5!=0}.inject(:+)
end

def problem2()
	fibArray = [1, 2, 3]
	until fibArray.last > 4000000; fibArray.push(fibArray.last+fibArray[fibArray.count-2]); end
	return fibArray.delete_if {|i| i%2!=0 or i > 4000000}.inject(:+)
end

def problem3()
	for prime in Prime.each(600851475143.0**(0.5)).to_a.reverse!
		return prime if 600851475143%prime == 0
	end
end

def problem4()
	largest = 0
	100.step(999,1) {|i| 100.step(999,1) {|j| largest = i*j if (i*j).to_s == (i*j).to_s.reverse and i*j > largest}}
	return largest
end

def problem5()
	gcdHash = Hash.new; Prime.each(19) {|i| gcdHash.merge!("#{i}": 0)}
	Prime.each(19) do |prime|
		for i in 1..20; if primeFactors(i)[:"#{prime}"]
				if primeFactors(i)[:"#{prime}"] > gcdHash[:"#{prime}"]
					gcdHash[:"#{prime}"] = primeFactors(i)[:"#{prime}"]
				end
			end
		end
	end
	product = 1
	Prime.each(19) { |prime| product *= prime**gcdHash[:"#{prime}"]}
	return product
end

def problem6()
	return (1..100).to_a.inject(:+)**2-(1..100).to_a.map{|i| i**2}.inject(:+)
end

def problem7()
	return Prime.take(10001).to_a.last
end

def problem8()
	product = 0
	series = File.readlines('p008_series.txt').join
	for start in 0..988; tempProduct = series[start..start+12].split(//).map{|i| i.to_i}.inject(:*)
		product = tempProduct if product < tempProduct
	end
	return product
end

def problem9()
	for a in 1..500
		for b in (a+1)..500; c = (a**2 + b**2)**(0.5)
			return (a*b*c).to_i if a+b+c == 1000
		end
	end
end

def problem10()
	sum = 0; Prime.each(2000000) {|i| sum += i}; return sum
end

def problem29()
	expoList = Array.new
	for a in 2..100; for b in 2..100; expoList.push(a**b); end; end
	return expoList.uniq.count
end

def problem30()
	sum = 0
	for i in 4000..200000; sum += i if sum_of_digits_to_fifth?(i); end
	return sum
end

def problem31()
	target = 200
	coinSizes = [1,2,5,10,20,50,100,200]
	ways = Array.new(target+1, 0)
	ways[0]=1
	for i in 0..coinSizes.count-1
		for j in coinSizes[i]..target
			ways[j] += ways[j - coinSizes[i]]
		end
	end
	return ways.last
end

def problem32()
	solutions = Array.new
	digitsPermutated = (1..9).to_a.permutation(9).to_a
	for set in digitsPermutated
		if (set[0..1].join.to_i)*(set[2..4].join.to_i) == set[5..8].join.to_i
			solutions.push(set[5..8].join.to_i)
		end
		if (set[0..0].join.to_i)*(set[1..4].join.to_i) == set[5..8].join.to_i
			solutions.push(set[5..8].join.to_i)
		end
	end
	return solutions.uniq.reduce(:+)
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

def problem34()
	sum=0; for i in 3..50000; sum+=i if i==factorial_sum(i); end; sum
end

#for function in functionArray
#	puts function
#end