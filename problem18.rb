# Version 1.0 THE ARROW

=begin
numarray = %w(75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23)


largest_sum = 0

i = 1

for row2 in 1..2
	temp_sum = 75
	temp_sum += numarray[row2].to_i
	for row3 in (row2+2)..(row2+3)
		temp_sum += numarray[row3].to_i
		for row4 in (row3+3)..(row3+4)
			temp_sum += numarray[row4].to_i
			for row5 in (row4+4)..(row4+5)
				temp_sum += numarray[row5].to_i
				for row6 in (row5+5)..(row5+6)
					temp_sum += numarray[row6].to_i
					for row7 in (row6+6)..(row6+7)
						temp_sum += numarray[row7].to_i
						for row8 in (row7+7)..(row7+8)
							temp_sum += numarray[row8].to_i
							for row9 in (row8+8)..(row8+9)
								temp_sum += numarray[row9].to_i
								for row10 in (row9+9)..(row9+10)
									temp_sum += numarray[row10].to_i
									for row11 in (row10+10)..(row10+11)
										temp_sum += numarray[row11].to_i
										for row12 in (row11+11)..(row11+12)
											temp_sum += numarray[row12].to_i
											for row13 in (row12+12)..(row12+13)
												temp_sum += numarray[row13].to_i
												for row14 in (row13+13)..(row13+14)
													temp_sum += numarray[row14].to_i
													for row15 in (row14+14)..(row14+15)
														temp_sum += numarray[row15].to_i
														if temp_sum > largest_sum
															largest_sum = temp_sum
														end
														temp_sum -= numarray[row15].to_i
													end
													temp_sum -= numarray[row14].to_i
												end
												temp_sum -= numarray[row13].to_i
											end
											temp_sum -= numarray[row12].to_i
										end
										temp_sum -= numarray[row11].to_i
									end
									temp_sum -= numarray[row10].to_i
								end
								temp_sum -= numarray[row9].to_i
							end
							temp_sum -= numarray[row8].to_i
						end
						temp_sum -= numarray[row7].to_i
					end
					temp_sum -= numarray[row6].to_i
				end
				temp_sum -= numarray[row5].to_i
			end
			temp_sum -= numarray[row4].to_i
		end
		temp_sum -= numarray[row3].to_i
	end
	temp_sum -= numarray[row2].to_i
end

puts largest_sum
=end

#Version 2.0 (works for problem 67 too)

def sumMaxing(file)
	pyramid = File.readlines(file).map {|i| i.split.delete_if{|i| i == "\n"}.map{|i| i.to_i}}
	(pyramid.count-1).step(1,-1) do |i|
		for num in 0..pyramid[i].count-2
			pyramid[i-1][num] += pyramid[i][num] > pyramid[i][num+1] ? pyramid[i][num] : pyramid[i][num+1]
		end
		pyramid.delete_at(i)
	end
	return pyramid
end

puts sumMaxing('p018_pyramid.txt')



































