#Version 1.0

=begin
require 'Matrix'


def directionPick(matrix, center, offsetX, offsetY, matrixSize)

	zeroLeft = 1
	zeroRight = 1
	zeroUp = 1
	zeroDown = 1


	if matrix[center+offsetY, center+offsetX-1] != 0 && (matrix[center+offsetY, center+offsetX-1] != nil)
		if center+offsetX-1 > 0
			zeroLeft = 0
		end
	end
	if matrix[center+offsetY, center+offsetX+1] != 0 && (matrix[center+offsetY, center+offsetX+1] != nil)
		if center+offsetX < matrixSize
			zeroRight = 0
		end
	end
	if matrix[center+offsetY-1, center+offsetX] != 0 && (matrix[center+offsetY-1, center+offsetX] != nil)
		if center+offsetY-1 > 0
			zeroUp = 0
		end
	end
	if matrix[center+offsetY+1, center+offsetX] != 0 && (matrix[center+offsetY+1, center+offsetX] != nil)
		if center+offsetY+1 < matrixSize
			zeroDown = 0
		end
	end

	if (zeroLeft == 1) && (zeroRight == 0) && (zeroUp == 1) && (zeroDown == 1)
		return "up"
	elsif (zeroLeft == 1) && (zeroRight == 0) && (zeroUp == 1) && (zeroDown == 0)
		return "up"
	elsif (zeroLeft == 1) && (zeroRight == 1) && (zeroUp == 1) && (zeroDown == 0)
		return "right"
	elsif (zeroLeft == 0) && (zeroRight == 1) && (zeroUp == 1) && (zeroDown == 0)
		return "right"
	elsif (zeroLeft == 0) && (zeroRight == 1) && (zeroUp == 1) && (zeroDown == 1)
		return "down"
	elsif (zeroLeft == 0) && (zeroRight == 1) && (zeroUp == 0) && (zeroDown == 1)
		return "down"
	elsif (zeroLeft == 1) && (zeroRight == 1) && (zeroUp == 0) && (zeroDown == 1)
		return "left"
	elsif (zeroLeft == 1) && (zeroRight == 0) && (zeroUp == 0) && (zeroDown == 1)
		return "left"
	end

end



puts "Matrix Size (odd): "
matrixSize = gets.to_i

matrix = Matrix.build(matrixSize, matrixSize) {|row, col| 0}

center = matrixSize/2

offsetX = 0
offsetY = 0

assignNum = 1

odd = 3

previousOdd = 2

matrix.send(:[]=,center+offsetY,center+offsetX,assignNum)
assignNum += 1
offsetX += 1
matrix.send(:[]=,center+offsetY,center+offsetX,assignNum)
assignNum += 1

total = -1

for num in assignNum..matrixSize**2
	direction = directionPick(matrix, center, offsetX, offsetY, matrixSize)
	if direction == "left"
		offsetX -= 1
	elsif direction == "right"
		offsetX += 1
	elsif direction == "up"
		offsetY -= 1
	elsif direction == "down"
		offsetY += 1
	end

	matrix.send(:[]=,center+offsetY,center+offsetX,num)

end

puts matrix

for i in 0..matrixSize-1
	total += matrix[i,i]
end

for i in 0..matrixSize-1
	total += matrix[matrixSize-1-i,i]
end

puts total
=end

#Version 2.0
def problem28()
	sum = 1
	stepper = 2
	(3..1001).step(2) do |square|
		corner = square**2
		for i in 0..3; sum += corner-stepper*i; end
		stepper += 2
	end
	return sum
end


puts problem28












