# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  ret = 0
  arr.each { |x| ret += x }
  ret
end

def max_2_sum(arr)
  # empty
  if(arr.empty?)
    return 0
  end
  # size one
  if(arr.size == 1)
    return arr[0]
  end
  # size > 1
  max1 = -9999
  max2 = -9999
  idxmax1 = -1
  arr.each_with_index { |x, i|
    if(x > max1)
      max1 = x
      idxmax1 = i
    end
  }
  arr.each_with_index { |x, i|
    if(x > max2 && idxmax1 != i)
      max2 = x
    end
  }
  max1 + max2
end

def sum_to_n?(arr, n)
  arr.each_with_index{|x, i|
    arr.each_with_index{|y, j|
      if(i != j)
        if(x + y == n)
          return true
        end
      end
    }
  }
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  if(!('a'...'z').include?(s[0]) && !('A'...'Z').include?(s[0]))
    return false
  end
  if(!['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'].include?(s[0]))
    return true
  end
  false
end

def binary_multiple_of_4?(s)
  s.each_char{|x|
    if(x != '0' && x != '1')
      return false
    end
  }
  if(s.size() == 1 && s[0] == '0') 
    return true
  end
  if(s.size <= 2 || s[s.size() - 2] != '0' || s[s.size() - 1] != '0')
    return false
  end
  true
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if(price <= 0)
      raise ArgumentError, 'price is zero'
    end
    
    if(isbn.empty?) 
      raise ArgumentError, 'isbn is invalid'
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', price)
  end
end
