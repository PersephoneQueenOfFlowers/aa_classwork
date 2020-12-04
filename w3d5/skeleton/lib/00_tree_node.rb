class PolyTreeNode

  attr_reader :children, :parent, :value 

  def initialize value 
    @parent = nil 
    @children = [] 
    @value = value  
  end

  def parent= ( pNode ) 
    if @parent.nil?       
      @parent = pNode
      pNode.nil? ? () : (@parent.children << self)
      
    else   
      @parent.children.delete(self)
      @parent = pNode 
      pNode.nil? ? () : (@parent.children << self)
    end
  end

  def add_child(cNode)
    cNode.parent = self
  end

  def remove_child(cNode)
    if self.children.include?(cNode)
      cNode.parent = nil 
    else  
      raise "node is not a child"
    end
  end

  def dfs target
    return self if self.value == target
    @children.each do |child|
      child.value == target ? (return child) : (child.dfs(target))
    end
    nil
  end


  def bfs target 
    return nil if self.nil?

    queue = [self]
    until queue.empty?
      first = queue.shift  
      return first if first.value == target  
      queue.concat(first.children) 
    end
    nil  
  end


end






# Write a class with four methods:
# An #initialize(value) method that sets the value, and starts parent as nil, and children to an empty array.
# A #parent method that returns the node's parent.
# A #children method that returns an array of children of a node.
# A #value method that returns the value stored at the node.

#Write a #parent= method which (1) sets the parent property and (2) adds the node to their parent's array of children (unless we're setting parent to nil).
#Run bundle exec rspec to run the provided tests. At this point, all the specs for #initialize and most of the specs for #parent= should pass. (We'll get to the other specs soon!)
