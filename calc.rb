class Calculator
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end
  
  def add
    value = @num1 + @num2
    puts "#{value}"
  end
  
  def subtract
    value = @num1 - @num2
    puts "#{value}"
  end
end

calc = Calculator.new(20, 11)
puts calc.add
puts calc.subtract