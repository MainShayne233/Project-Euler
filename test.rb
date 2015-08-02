hash = Hash.new
hash.merge!("#{2}": 5)
hash[:"2"] += 1
print hash