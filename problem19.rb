day = 1
dayofweek = 2
month = 1
year = 1901
sundays = 0

until ((day == 31) && (month == 12) && (year == 2000))
	if (dayofweek == 7) && (day == 1)
		sundays += 1
	end
	if dayofweek == 7
		dayofweek = 0
	end

	if (month == 1) || (month == 3) || (month == 5) || (month == 7) || (month == 8) || (month == 10) || (month == 12)
		if (month == 12) && (day == 31)
			year += 1
			month = 0
		end
		if day == 31
			month += 1
			day = 0
		end
	
	elsif (month == 4) || (month == 6) || (month == 9) || (month == 11)
		if day == 30
			month += 1
			day = 0
		end
	
	elsif (month == 2)
		if year % 400 == 0
			if day == 29
				month += 1
				day = 0
			end
		elsif (year % 4 == 0) && (year % 100 != 0)
			if day == 29
				month += 1
				day = 0
			end
		elsif year % 4 != 0
			if day == 28
				month += 1
				day = 0
			end
		end
	end

	dayofweek += 1
	day += 1

	puts "#{month}/#{day}/#{year} day of week: #{dayofweek}"
end

puts "There were #{sundays}"