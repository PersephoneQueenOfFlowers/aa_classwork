require 'byebug'

class Array
  # Write an `Array#my_inject` method. If my_inject receives no argument, then
  # use the first element of the array as the default accumulator.
  # **Do NOT use the built-in `Array#inject` or `Array#reduce` methods in your 
  # implementation.**

  def my_inject(accumulator = nil, &prc)
    acc = nil 
    if accumulator == nil 
      acc = self[0]
    end

    injected = self.map{|acc, el| prc.call(acc,el)}
    injected
  end
end

# Define a method `primes(num)` that returns an array of the first "num" primes.
# You may wish to use an `is_prime?` helper method.


def is_prime?(num)
  (2...num).each do |n|
    return false if num % n == 0 
  end
  true
end

def primes(num)
  if num == 0 || num == nil || num == []
    return [] 
  end

  primes_returned = []
  num_primes = 0 
  i = 2 
  while num_primes < num do 
    # debugger
    if is_prime?(i) == true 
      primes_returned << i 
      num_primes += 1 
    end
    i += 1 
  end
  primes_returned 
end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num == 1 || num == 0
  return [1,1] if num == 2 
  num * factorials_rec(num - 1)
end

class Array
  # Write an `Array#dups` method that will return a hash containing the indices 
  # of all duplicate elements. The keys are the duplicate elements; the values 
  # are arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    count = Hash.new { |h, k| h[k] = [] }
    self.each_with_index do |el,idx| 
      count[el] << idx 
    end
    p count.reject{|k,v| v.length < 2}
  end

end

class String
  # Write a `String#symmetric_substrings` method that returns an array of 
  # substrings that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings



  end
end

class Array
  # Write an `Array#merge_sort` method; it should not modify the original array.
  # **Do NOT use the built in `Array#sort` or `Array#sort_by` methods in your 
  # implementation.** 
  
  def merge_sort(&prc) 
    return self if count < 2 

    middle = count / 2 #this gets the half of the number of elements

    left = self.take(middle) # takes up to the middle number of elements 
    right = self.drop(middle) # drops the first half of the elements 

    sorted_left = left.merge_sort(&prc) 
    sorted_right = right.merge_sort(&prc) 

    merge(sorted_left, sorted_right, prc) 

  end

  private
  def merge(left, right, prc)
    prc ||= Proc.new{|el1,el2| el1 <=> el2 }
    merged_array = [] 
    until left.empty? || right.empty? 
      prc.call(left.first, right.first) == -1 ? (merged_array << left.shift): (merged_array << right.shift) 
    end
    merged_array + left + right 
  end
end
