class Employee 

  attr_reader :name, :title, :salary, :boss
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
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

emp_1 = Employee.new("Ned", "IT Consultant", 70000, mgr_1)