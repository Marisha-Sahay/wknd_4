# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator
  def square_root(number)
    Math.sqrt(number)
  end
end

class WhizBangCalculator < FancyCalculator
  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
first_number = 9
second_number = 5
calc = WhizBangCalculator.new()

result = calc.add(first_number,second_number)
puts "Your method returned #{result}"
if result == 14
  puts "PASS"
else 
  puts "f"
end

result = calc.subtract(first_number,second_number)
puts "Your method returned #{result}"
if result == 4
  puts "PASS"
else 
  puts "f"
end

result = calc.multiply(first_number,second_number)
puts "Your method returned #{result}"
if result == 45
  puts "PASS"
else 
  puts "f"
end

result = calc.divide(first_number,second_number)
puts "Your method returned #{result}"
if result == 1
  puts "PASS"
else 
  puts "f"
end

result = calc.square_root(first_number)
puts "Your method returned #{result}"
if result == 3
  puts "PASS"
else 
  puts "f"
end

result = calc.hypotenuse(first_number,second_number).round(3)
puts "Your method returned #{result}"
if result == 10.296
  puts "PASS"
else 
  puts "f"
end

result = calc.exponent(first_number,3)
puts "Your method returned #{result}"
if result == 729
  puts "PASS"
else 
  puts "f"
end