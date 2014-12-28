# Write down whether the following expressions return true or false. 
# Then type the expressions into irb to see the results.

# 1. (32 * 4) >= 129  # false
# 2. false != !true   # false
# 3. true == 4        # false
# 4. false == (847 == '874') # true
# 5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false   # true

# Write a method that takes a string as argument. 
# The method should return the all-caps version of the string, 
# only if the string is longer than 10 characters.
# Example: change "hi there" to "HI THERE". 
# (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def all_caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts all_caps("hi there")
puts all_caps("hello there")

# Write a program that takes a number from the user between 0 and 100 
# and reports back whether the number is between 0 and 50, 50 and 100, or above 100.

puts "Enter a number between 0 and 100:"
number = gets.chomp.to_i

if number < 0
  puts "The number is below 0"
elsif number <= 50
  puts "The number is between 0 and 50"
elsif number <= 100
  puts "The number is between 50 and 100"
else
  puts "The number is above 100"
end

# What will each block of code below print to the screen? 
# Write your answer on a piece of paper or in a text editor 
# and then run each block of code to see if you were correct.

# 1. '4' == 4 ? puts("TRUE") : puts("FALSE")

# 2. x = 2
#    if ((x * 3) / 2) == (4 + 4 - x - 3)
#      puts "Did you get it right?"
#    else
#      puts "Did you?"
#    end

# 3. y = 9
#    x = 10
#    if (x + 1) <= (y)
#      puts "Alright."
#    elsif (x + 1) >= (y)
#      puts "Alright now!"
#    elsif (y + 1) == x
#      puts "ALRIGHT NOW!"
#    else
#      puts "Alrighty!"
#    end

# 1. "FALSE"
# 2. "Did you get it right?"
# 3. "Alright now!"

# Rewrite your program from exercise 3 using a case statement. 
# Wrap each statement in a method and make sure they both still work.

puts "Enter a number between 0 and 100:"
number = gets.chomp.to_i

answer = case
when number < 0
  "The number is below 0"
when number <= 50
  "The number is between 0 and 50"
when number <= 100
  "The number is between 50 and 100"
else
  "The number is above 100"
end

puts answer

def report_number(num)
  case
    when num < 0
      puts "The number is below 0"
    when num <= 50
      puts "The number is between 0 and 50"
    when num <= 100
      puts "The number is between 50 and 100"
    else
      puts "The number is above 100"
  end
end


report_number(75)

# When you run the following code...

#    def equal_to_four(x)
#      if x == 4
#        puts "yup"
#      else
#        puts "nope"
#    end

#    equal_to_four(5)
# You get the following error message..

# test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end

# Answer: There is an 'end' keyword missing after else statement