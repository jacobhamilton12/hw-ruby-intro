# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #YOUR CODE HERE
  arr.inject(0, :+)

end

#print sum([1,1,1,4,1])

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  s1 = nil
  s2 = nil
  arr.each do |x|
    if s1 == nil
      s1 = x.dup
    elsif s1 <= x
      s2 = s1.dup
      s1 = x.dup
    elsif s2 == nil
      s2 = x.dup
    end
  end
  print arr
  print "\n" , s1 , " : " , s2 , "\n"
  s1 + s2
end

#print max_2_sum [1,9,1,1,2,3,4,3]

def sum_to_n? arr, n
  # YOUR CODE HERE
  diff = Hash.new
  diff.default = 0
  arr.each do |x|
    temp = n - x
    if diff.has_key? temp.to_s
      return true
    end 
    diff[x.to_s] = ""
  end
  false
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[^aeiou]/i && s =~ /^\w/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  /^[10]*00$/ =~ s 
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError.new("Not valid price") if price <= 0
    raise ArgumentError.new("Not valid isbn") if isbn == ""
  end
  
  attr_accessor :price
  attr_accessor :isbn
  
  def price_as_string
    "$%0.2f" % [@price]
  end
end
