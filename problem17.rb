require 'to_words'

sum = 0
for i in 1..1000; sum += i.to_words.split(//).delete_if {|i| i == " "}.count; end
puts sum