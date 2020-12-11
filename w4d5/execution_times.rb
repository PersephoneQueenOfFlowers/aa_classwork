def my_min(array) # Phase I: O(n^2) | Phase II: O(n)
  min = array[0]
  array.each {|n| min = n if n < min }
  min
end

def largest_contiguous_subsum(arr) #Phase 1 solution O(2^n) or O(n^2)??

  subs = [] 
  (0...arr.length).each do |i1|  
    (0...arr.length).each do |i2|
      subs << arr[i1..i2] if i2 > i1       
    end
  end
  max = subs[0].sum 
  subs.each do |sub_array|
    max = sub_array.sum if sub_array.sum > max 
  end
  max
end



