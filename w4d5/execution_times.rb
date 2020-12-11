require 'byebug'

def my_min(array) # Phase I: O(n^2) | Phase II: O(n)
  min = array[0]
  array.each {|n| min = n if n < min }
  min
end

# def largest_contiguous_subsum(arr) #Phase 1 solution O(2^n) or O(n^2)??

#   subs = [] 
#   (0...arr.length).each do |i1|  
#     (0...arr.length).each do |i2|
#       subs << arr[i1..i2] if i2 > i1       
#     end
#   end
#   max = subs[0].sum 
#   subs.each do |sub_array|
#     max = sub_array.sum if sub_array.sum > max 
#   end
#   max
# end

def largest_contiguous_subsum(arr)
  largest = 0
  # (0...arr.length).each do |i| #on first loop, we're summing all ele's. Figure out a way to get all contiguous sums from this idx in this iteration
  #   debugger
  #   current_sub = arr[i...(arr.length-i)]
  #   current_sum = current_sub.sum 
  #   largest = current_sum if current_sum > largest
  # end
  i = 0
  j = arr.length-1
  while i < arr.length
    current_sum = arr.sum
    if current_sum < arr[i..j] 
      current_sum = arr[i..j]
      j-=1
    end
       


  end

end

def lcs(arr)
  neighbor_sums = []
  largest = arr[0..1].sum 
   (0...arr.length-1).each do |i|
      neighbor_sums << arr[i] + arr[i+1] 
   end
   max_sum = 0 
   largest.each do |pair_sum|
    
   end
end

list = [2, 3, -6, 7, -6, 7]
largest_contiguous_subsum(list)



