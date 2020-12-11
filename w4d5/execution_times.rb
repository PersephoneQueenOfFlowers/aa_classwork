def my_min(array) # Phase I: O(n^2) | Phase II: O(n)
  min = array[0]
  array.each {|n| min = n if n < min }
  min
end



