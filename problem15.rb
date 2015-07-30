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
