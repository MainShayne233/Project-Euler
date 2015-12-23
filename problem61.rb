def triangle(n); n*(n+1)/2; end

def square(n); n**2; end

def pentagonal(n); n*(3*n-1)/2; end

def hexagonal(n); n*(2*n-1); end

def heptagonal(n); n*(5*n-3)/2; end

def octagonal(n); n*(3*n-2); end

hash = Hash.new()

names = ['triangle', 'square', 'pentagonal','hexagonal', 'heptagonal', 'octagonal']

for name in names
  temp = Array.new()
  i = 1
  until send(name, i) > 9999
    temp.push(send(name, i))
    i+=1
  end
  hash[name] = temp
end
    
puts hash['triangle']