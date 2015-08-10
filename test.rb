
require 'prime'
primeArray = Prime.each(1000).to_a.reverse
primeArray += primeArray.map{|i| -i}.reverse
print primeArray.reverse

