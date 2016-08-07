# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  missing_letters = ""
  j = 0
  while j < range.length - 1
    if (range[j+1].ord)-(range[j].ord) == 1
      j += 1
    else
    missing_letters = missing_letters + ((range[j].ord) + 1).chr 
    # puts m
    # puts j
    j += 1
    end
  end
  return missing_letters
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result


if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts
puts "Your method returned:"
puts result


if result == ""
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("ace")

puts
puts "Your method returned:"
puts result

if result == "bd"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("acdefhikln")

puts
puts "Your method returned:"
puts result

if result == "bgjm"
  puts "PASS!"
else
  puts "F"
end