# Look at the following programs...

# 1)
x = 0
3.times do
  x += 1
end
puts x

# and...
# 2)
y = 0
3.times do
  y += 1
  x = y
end
puts x

# What does x print to the screen in each case? Do they both give errors? 
# Are the errors different? Why?

# Answer:
# 1) x prints 3
# 2) x is not reachable in the global scope (first program needs to be commented out)

# What does the following error message tell you?

# NameError: undefined local variable or method `shoes' for main:Object
#   from (irb):3
#   from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# Answer: Either the variable shoes is not defined at all or it is not reachable in current scope.