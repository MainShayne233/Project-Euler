for i in 1..1000
  power = 10**(i)
  root = power**(1.0/power.to_s.length)
  break if root.to_i.to_s.length > i
end

puts "power: #{power} root: #{root} i: #{i}"