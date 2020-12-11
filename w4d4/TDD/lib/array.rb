

def my_uniq(arr)
    arr.uniq
end 

def two_sum(arr)
  output_arr = []
  arr.each_with_index  do |ele,idx1|
    arr.each_with_index do |ele2,idx2|
      if idx2 > idx1 
        if ele + ele2 == 0 
          output_arr << [ ele, ele2 ].sort 
        end 
      end 
    end 
  end
  output_arr
end

def my_transpose two_d 
  two_d.transpose
end

def hanoi_tower(arr)
  # while arr[0].length > 0 
  #   #pop arr[0].last and push onto other subarrs whose last element is larger or subarr is empty
  #   if arr[1].last > arr[0].last
  #     arr[1] << arr[0].pop
  #   end 

  # end
  arr 
end 
