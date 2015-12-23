require 'prime'

def con_both_ways(x, y)
  (("#{x}" + "#{y}").to_i).prime? and (("#{y}" + "#{x}").to_i).prime?
end


primes = Prime.each(30000).to_a

candidates = Array.new()

for p in primes
  cand_primes = Array.new()
  for q in primes
    if con_both_ways(p,q) and p != q
      cand_primes.push(q)
    end
  end
  candidates.push({p => cand_primes})
end

puts candidates