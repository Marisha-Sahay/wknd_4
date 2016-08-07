# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

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

class FancyCalculator
  include SimpleCalculator
  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:
first_number = 9
second_number = 5
fancycalc = FancyCalculator.new()
result = fancycalc.add(first_number,second_number)
puts "Your method returned #{result}"
if result == 14
  puts "PASS"
else 
  puts "f"
end

result = fancycalc.subtract(first_number,second_number)
puts "Your method returned #{result}"
if result == 4
  puts "PASS"
else 
  puts "f"
end

result = fancycalc.multiply(first_number,second_number)
puts "Your method returned #{result}"
if result == 45
  puts "PASS"
else 
  puts "f"
end

result = fancycalc.divide(first_number,second_number)
puts "Your method returned #{result}"
if result == 1
  puts "PASS"
else 
  puts "f"
end

result = fancycalc.square_root(first_number)
puts "Your method returned #{result}"
if result == 3
  puts "PASS"
else 
  puts "f"
end


