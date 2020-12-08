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

  def initialize(name, title, salary, employees)
    super(name, title, salary)
    @employees = employees # array of all empl and sub-empl
  end

  def emp_salaries
    sal = @employees.inject { |acc, emp| acc + emp.salary }
  end

  def bonus(mult)
    # @bonus = sal_arr.each * multiplier 
  end
end

p emp_1 = Employee.new("Ned", "IT Consultant", 70000)
p emp_1.boss("Nicole")

p mgr_1 = Manager.new("Nicole", "Team Leader", 100000, [emp_1])


# def dfs salary
#     return nil if self.nil?
#     return self if self.value == salary
#     @employees.each do |emp|
#       result = emp.dfs(salary)
#       return result unless result.nil?
#     end
#     nil
#   end