def bad_two_sum?(arr, target_sum) #bigO(n^2)
    arr.each_with_index do |el1,idx1|
      arr.each_with_index do |el2,idx2| 
        return true if idx2 > idx1 && el1 + el2 == target_sum 
      end
    end
    false
end

def okay_two_sum?(arr, target_sum) #bigO(n) 
#this doesn't need to be sorted
  arr.each_with_index do |el, idx|
    if arr.index(target_sum - el) != idx && sorted.index(target_sum - el) != nil
      return true  
    end  
  end
  false 
end

def two_sum?(arr,target_sum) #bigO(n)

  values = Hash.new(0)
  arr.each do |el|
    values[el] += 1
  end

  arr.each do |el|
    values.key(target_sum - el) != nil && values.key(target_sum - el) != values.key(el) ? (return true) :(
      return true if values[el] > 1 && values.key(el) * 2 == target_sum
    )
  end
  false 
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false