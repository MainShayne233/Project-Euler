def triangle(n); n*(n+1)/2; end

def square(n); n**2; end

def pentagonal(n); n*(3*n-1)/2; end

def hexagonal(n); n*(2*n-1); end

def heptagonal(n); n*(5*n-3)/2; end

def octagonal(n); n*(3*n-2); end

def link(x,y)
	x.to_s[2..3] == y.to_s[0..1]
end

nums_hash = Hash.new()

names = ['triangle', 'square', 'pentagonal','hexagonal', 'heptagonal', 'octagonal']

for name in names
  temp = Hash.new()
  i = 1
  until send(name, i) > 9999
    val = send(name, i)
    temp[val] = [] if val > 999
    i+=1
  end
  nums_hash[name] = temp
end

orig = Marshal.load(Marshal.dump(nums_hash))

for name1 in names
	hash1 = nums_hash[name1]
	hash1.each do |key1, val1|
		for name2 in names
			next if name2 == name1
			hash2 = nums_hash[name2]
			hash2.each do |key2, val2|
				if link(key1, key2)
					hash1[key1].push([name2, key2])
				end
			end
		end
	end
end

def cyclical_nums(nums_hash, names)

	cand_names = Array.new()
	cand_vals = Array.new()

	for name1 in names
		cand_names[0] = name1
		hash1 = nums_hash[name1]
		hash1.each do |key1, array1|
			cand_vals[0] = key1
			for set1 in array1
				cand_names[1] = set1[0]
				cand_vals[1] = set1[1]
				array2 = nums_hash[cand_names[1]][cand_vals[1]]
				for set2 in array2
					cand_names[2] = set2[0]
					cand_vals[2] = set2[1]
					array3 = nums_hash[cand_names[2]][cand_vals[2]]
					for set3 in array3
						cand_names[3] = set3[0]
						cand_vals[3] = set3[1]
						array4 = nums_hash[cand_names[3]][cand_vals[3]]
						for set4 in array4
							cand_names[4] = set4[0]
							cand_vals[4] = set4[1]
							array5 = nums_hash[cand_names[4]][cand_vals[4]]
							for set5 in array5
								cand_names[5] = set5[0]
								cand_vals[5] = set5[1]
								if link(cand_vals[5], cand_vals[0]) and cand_names.uniq.count > 5
									return cand_vals.reduce(:+)
								end
							end
						end
					end
				end
			end
		end
	end

end


puts cyclical_nums(nums_hash, names)






