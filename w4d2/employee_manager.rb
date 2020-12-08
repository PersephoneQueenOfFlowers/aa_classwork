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
  attr_reader :employees
  attr_accessor :emp_salaries
  def initialize(name, title, salary, employees)
    super(name, title, salary)
    @employees = employees # array of all empl and sub-empl
    @emp_salaries = 0 
    emp_salaries
  end

  def emp_salaries
    @employees.each do |emp| 
      @emp_salaries += emp.salary
    end
    p @emp_salaries
  end

  def bonus(mult)
    @bonus = @emp_salaries * mult 
  end
end

emp_1 = Employee.new("Ned", "IT Consultant", 70000)
emp_2 = Employee.new("Tom", "software engineer", 80000)            
emp_1.boss("Nicole")
emp_2.boss("Nicole")

mgr_1 = Manager.new("Nicole", "Team Leader", 100000, [emp_1,emp_2])
p mgr_1.bonus(0.5)
# p mgr_1.emp_salaries

# def dfs salary
#     return nil if self.nil?
#     return self if self.value == salary
#     @employees.each do |emp|
#       result = emp.dfs(salary)
#       return result unless result.nil?
#     end
#     nil
#   end