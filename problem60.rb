require 'prime'


def con_both_ways(x, y)
  (("#{x}" + "#{y}").to_i).prime? and (("#{y}" + "#{x}").to_i).prime?
end


primes = Prime.each(10000).to_a

candidates = Hash.new()

for p in primes
  cand_primes = Array.new()
  for q in primes
    if con_both_ways(p,q) and p != q
      cand_primes.push(q)
    end
  end
  candidates[p] = cand_primes
end

for p in primes
	for cand in candidates[p]
		next if cand < p
		for pos1 in candidates[cand]
			next if pos1 < p or pos1 < cand
			if candidates[p].include? pos1
				for pos2 in candidates[pos1]
					next if pos2 < p or pos2 < cand or pos2 < pos1
					if candidates[p].include? pos2 and candidates[cand].include? pos2
						for pos3 in candidates[pos2]
							next if pos3 < p or pos3 < cand or pos3 < pos1 or pos3 < pos2
							if candidates[p].include? pos3 and candidates[cand].include? pos3 and candidates[pos1].include? pos3
								puts "#{p} #{cand} #{pos1} #{pos2} #{pos3}"
							end
						end
					end
				end
			end
		end
	end
end