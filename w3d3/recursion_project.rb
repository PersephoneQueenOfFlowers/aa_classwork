require "byebug"

def range first, last   # iterative 
  new_arr = []
  (first...last).each do |i|
    new_arr << i 
  end
  new_arr
end

def rec_range first, last 
  return [first] if (first + 1) == last  
  [first] + rec_range(first + 1, last) 
end

# p rec_range 1, 5 # [1,2,3,4]
# p rec_range -2, 5 # [-2,-1,0,1,2,3,4]

def exp_1(b, num)
    return 1 if num == 0
    b * exp_1(b, num - 1)
end

def exp_2(b, num)
    return 1 if num == 0
    if num.even? 
      memo = exp_2(b, num / 2)
      return memo * memo 
    else
      memo = exp_2(b, (num - 1) / 2)
      return b * (memo * memo)
    end
end


# p exp_2(2,4) #16
# p exp_2(3,3) #27
# p exp_2(2,0) #1

# recursion 1
# exp(b, 0) = 1
# exp(b, n) = b * exp(b, n - 1)
class Array
  def deep_dup 
    # debugger
    deep_duped = []
    # deep_duped << self if self.length == 1

    self.each do |arr|
      if arr.kind_of?(Array) == true 
        deep_duped << arr.deep_dup  
      else
        deep_duped << arr  
      end
    end
    deep_duped
  end
end

# arr1 = [1,2,3,[4],[8,[5,6,7]]]
# arr2 = [1, 2, [3]]
# arr3 = [4, [5, [6]], 7 , 8]
# robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]

# robot_parts_copy = robot_parts.deep_dup
# robot_parts_copy[1] << "LEDS"
# p robot_parts_copy
# p robot_parts  

def fibonacci_iter(num)
  return [1] if num == 1
  return [1, 1] if num == 2

  fibonacci = [1, 1]
  i = 2
  while i < num do
    fibonacci << fibonacci[-1] + fibonacci[-2]
    i += 1
  end
  fibonacci
end

# p fibonacci_iter(1)
# p fibonacci_iter(2)
# p fibonacci_iter(5)

def fibonacci_rec num 
  return [1] if num == 1
  return [1, 1] if num == 2

  fib_arr = fibonacci_rec(num - 1) 
  last = fib_arr[-1] + fib_arr[-2]  
  fib_arr << last 
  return fib_arr 
end

# p fibonacci_rec(1)
# p fibonacci_rec(2)
# p fibonacci_rec(5)
# p fibonacci_rec(7)



def bsearch arr, target 
  return nil if arr.length == 1 && !arr.include?(target)

  mid_idx = arr.length / 2

  return mid_idx if arr[mid_idx] == target 
  
  left = arr.take(mid_idx)
  right = arr.drop(mid_idx)

  if arr[mid_idx] > target 
    bsearch(left, target)
  else 
    result = bsearch(right,target)
    if result.nil? 
      return nil 
    else 
      result + mid_idx
    end
  end
end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil


arr_a = [4,2,6,5,9,78,55,80,2,13,54,86,-1]
class Array 
  def merge_sort(&prc) 
    return self if count < 2 

    middle = count / 2 #this gets the half of the number of elements

    left = self.take(middle) # takes up to the middle number of elements 
    right = self.drop(middle) # drops the first half of the elements 

    sorted_left = left.merge_sort(&prc) 
    sorted_right = right.merge_sort(&prc) 

    merge(sorted_left, sorted_right, prc) 

  end

  def merge(left, right, prc)
    prc ||= Proc.new{|el1,el2| el1 <=> el2 }
    merged_array = [] 
    until left.empty? || right.empty? 
      prc.call(left.first, right.first) == -1 ? (merged_array << left.shift): (merged_array << right.shift) 
    end
    merged_array + left + right 
  end
end

# p arr_a.merge_sort

