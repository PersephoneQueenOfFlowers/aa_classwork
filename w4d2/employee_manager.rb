class Employee 

  attr_reader :name, :title, :salary, :boss
  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
  end

  def boss boss_str
    @boss = boss_str
  end

  def bonus(mult)
    bonus = @salary * mult
  end


end


class Manager < Employee

  def initialize(name, title, salary, boss, employees)
    super(name, title, salary, boss)
    @employees = employees # array of all empl and sub-empl
  end

end

p emp_1 = Employee.new("Ned", "IT Consultant", 70000)
p emp_1.boss("Nicole")

# def dfs target
#     return nil if self.nil?
#     return self if self.value == target
#     @children.each do |child|
#       result = child.dfs(target)
#       return result unless result.nil?
#     end
#     nil
#   end