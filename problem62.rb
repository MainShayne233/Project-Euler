def cubed(n); n**3; end

cubes = Array.new()

i = 1
until cubed(i) > cubed(10000)
  cubes.push([i,cubed(i)])
  i+=1;
end


for cube in cubes
  cube[1] = cube[1].to_s.split(//).sort.reverse.join.to_i
end



for cube in cubes
  root = cube[0]
  comp_cube = cube[1]
  count = 1
  for n in cubes
    count += 1 if n[1] == comp_cube and n[0] != root
   break if n[1].to_s.length > comp_cube.to_s.length
  end
  if count > 4
    puts root**3
    break
  end
end




  