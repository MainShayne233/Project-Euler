require 'date'

class Date
  def dayname
     DAYNAMES[self.wday]
  end
end



first, last = Date.new(1901,1,1), Date.new(2000,12,31)

sundays = 0
for date in first..last
	sundays += 1 if date.dayname == "Sunday" && date.day == 1
end
puts sundays