require 'byebug'

class MyStack
  attr_accessor :store
  def initialize
    @store = []
  end

  def peek 
    @store[-1]
  end

  def size 
    @store.length
  end

  def empty?
    @store.empty?
  end

  def pop 
    @store.pop
  end

  def push(el)
    @store.push(el)
  end
end



class MyQueue 
  attr_accessor :store
  def initialize  
    @store = []
  end

  def peek 
    @store[0]
  end

  def size 
    @store.length
  end

  def empty? 
    @store.empty?
  end

  def enqueue (el)
    store.push(el)
  end

  def dequeue
    shifted = store.shift()
    shifted
  end
end


def windowed_max_range(arr, size)
  max_range = nil

  i = 0

  max_iter = arr.length - size

  while i <= (max_iter) #bigO(n)
    # debugger
    window = arr[i...(i+size)].sort #log(n)
    current_range = window[-1] - window[0]
    max_range = current_range if max_range.nil? || current_range > max_range 
    i += 1
  end
  max_range
end 


p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 