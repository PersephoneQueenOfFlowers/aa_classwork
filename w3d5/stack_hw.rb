class Stack
  attr_accessor :new_el, :ivar, :popped
    def initialize el

      # create ivar to store stack here!
      @ivar = [el]

    end

    def push(el)
      @ivar << el
      # adds an element to the stack
    end

    def pop
      @popped = @ivar.pop
      # removes one element from the stack
    end

    def peek
      @ivar[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end