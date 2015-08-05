# Version 1.0 - cooler version

=begin
require 'Matrix'

sideLength = 20	
sideLength += 1
gridMatrix = Matrix.build(sideLength, sideLength) {|row, col| 0 }
for row in 0..sideLength-1
	for element in 0..sideLength-1
		tempSum = 0
		if gridMatrix[row,element-1] != nil
			tempSum += gridMatrix[row,element-1]
		end
		if gridMatrix[row-1,element] != nil
			tempSum += gridMatrix[row-1,element]
		end
		if (element == 0) and (row == 0)
			gridMatrix.send(:[]=,row,element,1)
		else
			gridMatrix.send(:[]=,row,element,tempSum)
		end
	end
end
puts gridMatrix[sideLength-1,sideLength-1]
=end

class Integer
  def factorial
    f = 1; for i in 1..self; f *= i; end; f
  end
  def choose(k)
  	return (self.factorial)/(k.factorial*(self-k).factorial)
  end
end

#def choose(n, k)
#	return (n.factorial)/(k.factorial*(n-k).factorial)
#end

puts 40.choose(20)
