class Queue
  attr_accessor :ivar
    def initialize el

      # create ivar to store stack here!
      @ivar = [el]

    end

    def enqueue(el)
      @ivar.push(el)
      # adds an element to the queue
    end

    def dequeue
      @ivar.shift
      # removes one element from the queue
    end

    def peek
      @ivar[0]
      # returns, but doesn't remove, the top element in the stack
    end
  end