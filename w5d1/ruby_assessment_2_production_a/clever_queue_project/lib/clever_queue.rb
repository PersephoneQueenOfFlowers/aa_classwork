class CleverQueue < SimpleQueue
  def initialize(num1,num2)
    raise "invalid args" if num2 > num1
    @capacity = num1
    @soft_limit = num2
    super()
  end

  def capacity 
    @capacity
  end

  def soft_limit 
    @soft_limit
  end

  def soft_limit=(arg) 
    @soft_limit = arg
  end

  def enqueue(*args)
    if args.length + @hidden_array.length > @capacity
      raise "queue is full" 
      return
    else  
      args.each{|arg| super(arg) }
    end
    size
  end

  def dequeue(num = 1 )
    return_arr = [] 
    if num.length > 0 
      while num[0] > 0 && size > 0 
        return_arr << super
        num[0] -= 1
      end
    else
      return_arr << super
    end
    return_arr
  end

  def trim 
    if size <= @soft_limit 
      return false 
    else   
      while size > @soft_limit  
        @hidden_array.pop
      end
      return true
    end
  end



  private
  attr_writer :capacity
end