class Array
  # Write an `Array#my_inject` method. If my_inject receives no argument, then
  # use the first element of the array as the default accumulator.
  # **Do NOT use the built-in `Array#inject` or `Array#reduce` methods in your 
  # implementation.**

  def my_inject(accumulator = nil, &prc)
    
    accumulator ||= self.first
    # if accumulator == nil 
    #   acc = self.first
    # if acc takes first ele, then start with second 
    # end
    (i..self[-1]).each_with_index do |el,idx |
      accumulator = prc.call(acc, el) #from second element on)
    end

  end
end

# describe "Array#my_inject" do
#   before(:each) do
#     expect_any_instance_of(Array).not_to receive(:inject)
#     expect_any_instance_of(Array).not_to receive(:reduce)
#   end

#   it "calls the block passed to it" do
#     expect do |block|
#       ["test array"].my_inject(:dummy, &block)
#     end.to yield_control.once
#   end

#   it "makes the first element the accumulator if no default is given" do
#     expect do |block|
#       ["el1", "el2", "el3"].my_inject(&block)
#     end.to yield_successive_args(["el1", "el2"], [nil, "el3"])
#   end

#   it "yields the accumulator and each element to the block" do
#     expect do |block|
#       [1, 2, 3].my_inject(100, &block)
#     end.to yield_successive_args([100, 1], [nil, 2], [nil, 3])
#   end

#   it "with accumulator, it correctly injects and returns answer" do
#     expect([1, 2, 3].my_inject(1) { |acc, x| acc + x }).to eq(7)
#     expect([3, 3].my_inject(3) { |acc, x| acc * x }).to eq(27)
#   end

#   it "without accumulator, it correctly injects and returns answer" do
#     expect([1, 2, 3].my_inject { |acc, x| acc + x }).to eq(6)
#     expect([3, 3].my_inject { |acc, x| acc * x }).to eq(9)
#   end
# end




# Define a method `primes(num)` that returns an array of the first "num" primes.
# You may wish to use an `is_prime?` helper method.

def is_prime?(num)
  (1...num).each do |n|
    return false if num % n == 0 
  end
  true
end



def primes(num)
  if num == 0
    return [] 
  end

  primes_returned = []
  num_primes = 0 
  i = 0 
  while num_primes <= num 
    if is_prime?(self[i]) == true 
      primes_returned << self[i] 
      num_primes += 1 
    end
    i += 1 
  end
  primes_returned 
end

def factorials_rec
  p self
  if self[0] == 1 && self.length == 1 
    return [1] 
  end
    
  if self[0] == 0 && self.length == 1
    return [1]
  end
end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.


class Array
  # Write an `Array#dups` method that will return a hash containing the indices 
  # of all duplicate elements. The keys are the duplicate elements; the values 
  # are arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups

    counter = Hash.new(0)

    self.each do |i|
      counter[i] += 1 
    end

    

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
  end

  private
  def self.merge(left, right, &prc)
  end
end
