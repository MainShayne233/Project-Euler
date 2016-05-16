require 'prime'

class Hash

  def merge!(hash)
    hash.each {|key, val| self[key] = val if (self[key] and val > self[key]) or !self[key]}
  end

  def merge(hash)
    self.dup.merge!(hash)
  end

end

class Utils

  def self.prime_factorization(n)
    factorization = {}
    Prime.each do |p|
      while n % p == 0
        factorization[p] = factorization[p] ? (factorization[p] + 1) : 1
        n /= p
      end
      break if p > n
    end
    factorization
  end

  def self.fib_seq(max, seq = [1,1])
    seq[-2..-1].reduce(:+) > max ? seq : fib_seq(max, seq.push(seq[-2..-1].reduce(:+)))
  end

  def self.merge_hashes(hashes, hash = {})
    return hash if hashes.empty?
    hash.merge!(hashes.shift)
    merge_hashes(hashes, hash)
  end

end