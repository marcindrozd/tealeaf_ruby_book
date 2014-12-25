# Add two strings together that, when concatenated, 
# return your first and last name as your full name in one string.

"Marcin" + "Drozd"

# Use the modulo operator, division, or a combination of both 
# to take a 4 digit number and find 
# 1) the thousands number 
# 2) the hundreds 
# 3) the tens and 
# 4) and the ones.

puts 4923 / 1000 # thousands number
puts 4923 % 1000 / 100 # the hundreds
puts 4923 % 100 / 10 # the tens
puts 4923 % 10 # the ones

# Write a program that uses a hash to store a list of movie titles with the year 
# they came out. Then use the puts command to make your program print out 
# the year of each movie to the screen.

movies = {:pulp_fiction => 1994, :star_wars => 1977, :et => 1982, :guardians_of_the_galaxy => 2014}

puts movies[:star_wars]
puts movies[:pulp_fiction]
puts movies[:et]
puts movies[:guardians_of_the_galaxy]

# Use the dates from the previous example and store them in an array. 
# Then make your program output the same thing as exercise 3.

movies = [1994, 1977, 1982, 2014]
puts movies[0]
puts movies[1]
puts movies[2]
puts movies[3]

# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# Write a program that calculates the squares of 3 float numbers of your choosing 
# and outputs the result to the screen.

puts 3.45 * 3.45
puts 17.2 * 17.2
puts 567.379 * 567.379

# What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#   from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# Answer: Ruby program was expecting } sign, e.g. closing of a hash, but instead ) was used
# incorrectly e.g. closing an array even though a hash was opened.

