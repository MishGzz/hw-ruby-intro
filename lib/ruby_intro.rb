# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_total = 0
  i = 0
  if(arr.size() > 0)
     while i < arr.size()
        sum_total += arr.at(i);
     i += 1
     end
  else
      return 0
  end
  return sum_total
end

def max_2_sum arr
  # YOUR CODE HERE
  i = 0
  if(arr.size() > 1)
     largest = arr.at(0)
     sec_largest = arr.at(1)
     largest_index = 0
     while i < arr.size()
        if(largest < arr.at(i))
            largest = arr.at(i)
            largest_index = i
        end
     i += 1
     end
     i = 0
     while i < arr.size()
        if(sec_largest < arr.at(i) && i != largest_index)
            sec_largest = arr.at(i)
        end
        i += 1
     end
     return (largest + sec_largest)
  elsif (arr.size() == 1)
     return arr.at(0)
  else
     return 0
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if(arr.size() < 2)
      return false
  else
      i = 0
      j = 1
      while i < arr.size()
        while j < arr.size()
            sum = arr.at(i) + arr.at(j)
            #puts "sum = " + sum.to_s
            if(sum == n)
                return true
            end
            j += 1
        end
        i += 1
        j = i + 1
      end
      return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  greeting =  "Hello, " + name
  return greeting
end

def starts_with_consonant? s
  # YOUR CODE HERE
  first_letter = s[0].to_s.downcase
  
  if(s.size() < 1)
    return false
  elsif(first_letter.count("aeiou") > 0)
    return false
  elsif(!first_letter.match(/^[[:alpha:]]$/))
    return false
  else
    return true
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s.size() > 0 && s.count("01") == s.size())
    num = s.to_i(2)
    if(num % 4 == 0)
        return true
    else
        return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(i , p)
    p = p.to_f
    if(i != "" && p > 0.00)
      @isbn = i.to_s
      @price = p
    else 
      raise ArgumentError.new("Invalid argument(s)")
    end
  end
  
  attr_reader :isbn, :price
  attr_accessor :isbn, :price
    
    def price_as_string
      price_s = price.to_s
      split = price_s.split('.')
      if(split.size() == 1)
        return "$" + price_s + ".00"
      elsif(split.at(1).size() == 1)
        return "$" + price_s + "0"
      elsif(split.at(1).size() == 2)
        return "$" + price_s
      else
        return "$" + split.at(0) + split.at(1)[0,1]
      end
    end
end
