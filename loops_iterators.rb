# What does the each method in the following program return after it is finished executing?

# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end

# Answer: It returns the array x

# Write a while loop that takes input from the user, 
# performs an action, and only stops when the user types "STOP". 
# Each loop can get info from the user.

begin
  puts "Enter STOP to stop the loop."
  input = gets.chomp
end while input != "STOP"

# Use the each_with_index method to iterate through an array 
# of your creation that prints each index and value of the array.

my_array = ["dog", "cat", "bird", "turtle"]

my_array.each_with_index do |value, index|
  puts "#{index}. #{value}"
end

# Write a method that counts down to zero using recursion.

def countdown(num)
  if num == 0
    num
  else
    puts num
    countdown(num - 1)
  end
end

puts countdown(10)
