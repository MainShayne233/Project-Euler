ftwos = 0
fthrees = 0
ffives = 0
fsevens = 0
felevens = 0
fthirteens = 0
fseventeens = 0
fnineteens = 0


start = 1

while start <= 20
twos = 0
threes = 0
fives = 0
sevens = 0
elevens = 0
thirteens = 0
seventeens = 0
nineteens = 0
work = start
	while work % 2 == 0
		twos += 1
		work = work/2
	end

	while work % 3 == 0
		threes += 1
		work = work/3
	end

	while work % 5 == 0
		fives += 1
		work = work/5
	end
	while work % 7 == 0
		sevens += 1
		work = work/7
	end
	while work % 11 == 0
		elevens += 1
		work = work/11
	end
	while work % 13 == 0
		thirteens += 1
		work = work/13
	end
	while work % 17 == 0
		seventeens += 1
		work = work/17
	end
	while work % 19 == 0
		nineteens += 1
		work = work/19
	end
	
	start += 1

	if twos > ftwos
		ftwos = twos
	end
	if threes > fthrees
		fthrees = threes
	end
	if fives > ffives
		ffives = fives
	end
	if sevens > fsevens
		fsevens = sevens
	end
	if elevens > felevens
		felevens = elevens
	end
	if thirteens > fthirteens
		fthirteens = thirteens
	end
	if seventeens > fseventeens
		fseventeens = seventeens
	end
	if nineteens > fnineteens
		fnineteens = nineteens
	end

end

puts ftwos
puts fthrees
puts ffives
puts fsevens
puts felevens
puts fthirteens
puts fseventeens
puts fnineteens

puts 2**ftwos*3**fthrees*5**ffives*7**fsevens*11**felevens*13**fthirteens*17**fseventeens*19**fnineteens

