# Version 1.0

=begin
oneP = 0
twoP = 0
fiveP = 0
tenP = 0
twentyP = 0
fiftyP = 0
onePo = 0

def totalCalc(oneP, twoP, fiveP, tenP, twentyP, fiftyP, onePo)
	tempTotal = 0
	tempTotal += oneP
	tempTotal += twoP*2
	tempTotal += fiveP*5
	tempTotal += tenP*10
	tempTotal += twentyP*20
	tempTotal += fiftyP*50
	tempTotal += onePo*100
	if tempTotal == 200
		return true
	else
		return false
	end
end


comboAmount = 8

for a in 0..1
	onePo = a
	for b in 0..3
		fiftyP = b
		for c in 0..9
			twentyP = c
			for d in 0..19
				tenP = d
				for e in 0..39
					fiveP = e
					for f in 0..99
						twoP = f
						for g in 0..195
							oneP = g
							if totalCalc(oneP, twoP, fiveP, tenP, twentyP, fiftyP, onePo)
								comboAmount += 1
							end
						end
					end
				end
			end
		end
	end
end

puts comboAmount
=end

# Version 2.0

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

puts problem31()

