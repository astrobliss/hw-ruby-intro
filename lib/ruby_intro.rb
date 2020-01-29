# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  a = 0;
  arr.each do |element|
    a+=element
  end
  return a
end

def max_2_sum arr
  if arr.length()==0
    return 0
  elsif arr.length()==1
    return arr[0]
  end
  biggest = arr[0]
  big = arr[1]
  arr[2..-1].each do |num|
    if num>=biggest
      big = biggest
      biggest = num
    elsif num>big
      big = num
    end
  end
  return big+biggest
end

def sum_to_n? arr, n
  remainder = Hash.new
  arr.each do |num|
    if remainder.member?(num)
      return true
    end
    remainder[n-num] = 0
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s=="" or s[0].downcase==s[0].upcase
    return false
  end
  vowles = Set['a','e','i','o','u']
  not vowles.include?(s[0].downcase)
end

def binary_multiple_of_4? s
  if s.length==0
    return false
  end
  for i in 0..s.length()-1
    if s[i]!="1" and s[i]!="0"
      return false
    end
  end
  s.to_i(base=2) % 4 == 0
end

# Part 3

class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn,price)
    if isbn.empty? or price <= 0
      raise ArgumentError.new("You messed up!")
    end
    @isbn = isbn
    @price = price
  end
  def isbn=(isbn)
    if not isbn.instance_of?(String) or isbn==""
      raise ArgumentError
    end
    @isbn = isbn
  end
  
  def price=(price)
    if price<=0
      raise ArgumentError
    end
    @price = price
  end
  
  def price_as_string
    sprintf("$%.2f", @price)
  end
end
