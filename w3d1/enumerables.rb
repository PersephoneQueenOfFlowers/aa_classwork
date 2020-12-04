class Array 
require 'byebug'

  def my_each &prc 
    self.each do |ele|  
      prc.call(ele)
    end
    self
  end

  def my_select &prc 
    new_arr = self.select{ |el| prc.call(el) }
  end

  def my_reject &prc 
    rejects = self.reject{|el| prc.call(el)}
  end

  def my_any? &prc 
    self.any?{| el | prc.call(el) }
  end

  def my_all? &prc 
    self.all?{| el | prc.call(el) }
  end

  def my_flatten arr
    self.each do |el|
      arr << el if (el.kind_of?(Array)  == false) 
      el.my_flatten arr if (el.kind_of?(Array) == true)
    end
    arr
  end

  def my_zip *args  
    len = self.length 
    args_len = args.length 
    zipped = []
    package = []
    (0...len).each do |n1|
      # debugger
      zipped << self[n1]
      args.each do |arg|
        zipped << arg[n1]
      end
      package << zipped
      zipped = []
    end
    package
  end

  def my_rotate *num_rotate 
    rotated = self
    if num_rotate.length == 0 
      num_times = 1 
    else  
      num_times = num_rotate[0].abs 
    end   

    p num_times 
    i = 0
    while i < num_times do 
      if num_rotate[0] == nil || num_rotate[0] < 0 
        temp = rotate.shift() 
        rotate << temp 
      else  
        temp = rotate.pop() 
        rotate.unshift(temp)
      end
      i += 1 
    end
    rotate 
  end

  def my_join *separator 
    return p self.join("") if separator.length == 0   
    p self.join(separator[0]) 
  end

end

# a = [4,5,6]
# b = [7,8,9]

# [1,2,3].my_zip(a,b)
# [1,2,3].my_rotate

# a = [ "a", "b", "c", "d" ]
# a.my_rotate         #=> ["b", "c", "d", "a"]
# a.my_rotate(2)      #=> ["c", "d", "a", "b"]
# a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
# a.my_rotate(15)     #=> ["d", "a", "b", "c"]

# a = [ "a", "b", "c", "d" ]
# a.my_join         # => "abcd"
# a.my_join("$")    # => "a$b$c$d"