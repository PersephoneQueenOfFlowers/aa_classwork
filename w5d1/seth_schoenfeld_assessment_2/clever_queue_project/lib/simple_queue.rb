class SimpleQueue 

  def initialize 
    @hidden_array = []
  end

  def size 
    @hidden_array.length
  end

  def vacant? 
    @hidden_array.length == 0
  end

  def front
    @hidden_array[0]
  end

  def back
    @hidden_array.last
  end

  def first(n)
    @hidden_array[0...n]
  end

  def last(n)
    @hidden_array[-n..-1]
  end

  def enqueue(el)
    @hidden_array.push(el)
    @hidden_array.length 
  end

  def dequeue
    return nil if @hidden_array.length < 1
    @hidden_array.shift
  end

  private
  attr_writer :hidden_array
end