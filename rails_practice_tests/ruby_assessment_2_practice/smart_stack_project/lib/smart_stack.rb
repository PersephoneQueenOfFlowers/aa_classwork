require 'byebug'
class SmartStack < Stack
  def initialize num
    @max_size = num
    @underlying_array = []
  end

  def max_size 
    @max_size
  end

  def full?  
    @max_size == @underlying_array.length
  end

  def push *args

    raise "stack is full" if @underlying_array.length + args.length > @max_size

    args.each{ |el| @underlying_array.push(el) }
    @underlying_array.length
  end

  def pop *num

    if num.empty? 
      top_stack = @underlying_array.pop 
      return [top_stack]
    end
    popped = []
    while num[0] > 0 
      popped.unshift(@underlying_array.pop)
      num[0] -= 1
    end
    popped.reverse
  end

  private 
  attr_accessor :underlying_array 
  attr_writer :max_size
end