# Write a program that contains a method called greeting that takes a name as its parameter. 
# It then prints a greeting message with the name included in it.

def greeting(name)
  puts "Hello, #{name}"
end

greeting("Marcin")

# What do the following expressions evaluate to?

# 1. x = 2
# 2. puts x = 2
# 3. p name = "Joe"
# 4. four = "four"
# 5. print something = "nothing"

# 1. returns 2
# 2. returns 'nil'
# 3. returns "Joe"
# 4. returns "four"
# 5. returns 'nil'

# Write a program that includes a method called multiply that takes two arguments 
# and returns the product of the two numbers.

def multiply(a, b)
  a * b
end

p multiply(2, 3)

# What will the following code print to the screen?

# def scream(words)
#  words = words + "!!!!"
#  return
#  puts words
# end

# scream("Yippeee")

# Answer: It will not print anything as return is called before puts and therefore puts is ignored.

# 1) Edit the method in exercise #4 so that it does print words on the screen.
# 2) What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# Answer: It will print "Yippeee!!!!", but return 'nil'

# What does the following error message tell you?

# ArgumentError: wrong number of arguments (1 for 2)
#  from (irb):1:in `calculate_product'
#  from (irb):4
#  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# Answer: Incorrect number of arguments passed to calculate_product method. The method requires
# 2 arguments, but only 1 was passed.