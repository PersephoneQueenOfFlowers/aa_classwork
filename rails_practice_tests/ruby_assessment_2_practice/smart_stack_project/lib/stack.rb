class Stack 

  def initialize 
    @underlying_array = []
  end

  def size 
    @underlying_array.size
  end

  def empty?
    @underlying_array.empty?
  end

  def top
    @underlying_array[-1]
  end

  def peek(num) 
    test_arr = @underlying_array.dup 
    peek_arr = []
    while peek_arr.length < num 
      peek_arr.push(test_arr.pop)
    end
    peek_arr.join("").reverse.split("")
  end

  def push el  
    @underlying_array.push(el)
    @underlying_array.length
  end

  def pop 
    return nil if @underlying_array.empty? == true
    val = @underlying_array.pop 
    val
  end

  private 
  attr_accessor :underlying_array
end