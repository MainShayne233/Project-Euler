class Integer
  def factors() (1..self).select { |n| (self % n).zero? } end
end

puts 100.factors.class