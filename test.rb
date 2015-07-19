require 'prime'

for num in 1000..9999
	numArray = num.to_s.split(//)
	permArray = numArray.permutation(4).to_a
	for i in 0..permArray.count-1
		permArray[i] = permArray[i].join.to_i
	end

	

	index = 0
	while index < permArray.count
		if !permArray[index].prime?
			permArray.delete_at(index)
		elsif permArray[index].to_s.length != 4 
			permArray.delete_at(index)
		elsif permArray[index] < 1000
			permArray.delete_at(index)
		else
			index += 1
		end
	end


	permArray.sort!
	permArray = permArray.uniq


	for perm1 in 0..permArray.count-3
		for perm2 in perm1+1..permArray.count-2
			for perm3 in perm2+1..permArray.count-1
				if permArray[perm1] == 1487 || permArray[perm2] == 1487 || permArray[perm3] == 1487
					break
				elsif (permArray[perm3] - permArray[perm2]) == 3330 and (permArray[perm2] - permArray[perm1]) == 3330
					puts "#{permArray[perm1]}#{permArray[perm2]}#{permArray[perm3]}"
				end
			end
		end
	end
end

