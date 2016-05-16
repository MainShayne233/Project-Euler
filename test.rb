require 'prime'

def fib_seq(max, seq = [1,1])
  seq[-2..-1].reduce(:+) > max ? seq : fib_seq(max, seq.push(seq[-2..-1].reduce(:+)))
end

def prime_concat(prime, seq)
  largest = prime
  seq.each do |p|
    prime = "#{p}#{prime}".to_i
    prime = prime_concat(prime, seq) if prime.prime?
    if prime > largest and prime.prime?
      largest = prime
      puts prime
    end
  end
  largest
end

def fib_conc(max)
  largest = 1
  seq = fib_seq(max)
  seq.each do |p|
    res = prime_concat(p, seq)
    largest = res if res > largest
  end
  largest
end

(1..100).each do |max|
  puts "max is #{max}"
  puts fib_conc(max)
end