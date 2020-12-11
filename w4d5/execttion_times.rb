def my_min(array) 
  min = 0
  array.each_with_index do |n1,i1|
    min = n1
    array.each_with_index do |n2,i2|
      if i2 > i1 && n2 < n1
        min = n2  
      end
    end
  end
  min
end