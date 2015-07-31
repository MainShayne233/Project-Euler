class Integer
  def factorial
    f = 1; for i in 1..self; f *= i; end; f
  end
end

def combinationCalculator(n, r)
	return n.factorial/(r.factorial*(n-r).factorial)
end

def problem53()
	amount = 0
	for n in 23..100
		for r in 4..n-4
			amount += 1 if combinationCalculator(n, r) > 1000000			
		end
	end
	return amount
end


puts problem53()