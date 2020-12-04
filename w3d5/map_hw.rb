class Map
  def initialize el
    
    # create ivar to store stack here!
    @ivar = Array.new([el])
    
  end
  
    # private
    # attr_reader :ivar

    def inspect 
      "#<Map:#{self.object_id}>"
    end

    def set(k,v)
      @ivar.push([k,v])
      self
      # adds an element to the queue
    end

    def get(k)
      result = nil 
      @ivar.each_with_index{|el,idx| el[0] == k ? (result = el): ()  }
      #returns nil if not found 
      result
    end

    def delete(k)
      @ivar.each_with_index{|el,idx| el[0] == k ? (@ivar.delete(el)): ()  }
      # removes element in the map matching the key
    end

    def show
      @ivar
    end
  end