x = 2**1000
numarry=x.to_s.split(//).map{|chr| chr.to_i}
sum = 0
numarry.each do |val|
	sum += val
end
puts sum