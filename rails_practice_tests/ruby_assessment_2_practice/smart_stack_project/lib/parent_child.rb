class Parent 
  
  def initialize(name, age, occupation)

    @name = name
    @age = age
    @occupation = occupation


  end

end

class Child < Parent 

  def initialize(name,age,occupation)
    super(name,age,occupation)
  end

end


# Test
if __FILE__ == $PROGRAM_NAME
  my_child = Child.new("Billy", 4, "cereal_muncher")
end