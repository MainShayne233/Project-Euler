puts (1..999).to_a.delete_if {|i| i%3!=0 and i%5!=0}.inject(:+)