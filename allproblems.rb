require 'prime'

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

for i in 1..10
	puts send("problem#{i}")
end

#for function in functionArray
#	puts function
#end