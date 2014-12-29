# Write a program that checks if the sequence of characters "lab" 
# exists in the following strings. 
# If it does exist, print out the word.

words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

words.each do |word|
  if /lab/.match(word)
    puts word
  end
end

# What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# Answer: The block will not print anythin as it lacks .call method after block
# and will return Proc object.

# What is exception handling and what problem does it solve?
# Answer: Exception handling is controlled way of dealing with errors while
# running a Ruby program. It allows to capture an error, put that info into 
# a log file and/or show meaningful error message to the user and then 
# continue with code execution if possible.

# Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


# Give us the following error when we run it?
# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# Asnwer: there is & missing before the argument so the method does not
# expect a block but a regular argument instead. This is not given
# and it shows that wrong number of arguments was passed.


