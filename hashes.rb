# Given a hash of family members, with keys as the title and an array of names as the values, 
# use Ruby's built-in select method to gather only immediate family members' 
# names into a new array.

# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

my_family = family.select { |key, value| (key == :sisters) || (key == :brothers) }
p my_family

# Look at Ruby's merge method. Notice that it has two versions. 
# What is the difference between merge and merge!? 
# Write a program that uses both and illustrate the differences.

# merge = returns a new hash containing the contents of other_hash and the contents of hsh. If no block is specified, 
# the value for entries with duplicate keys will be that of other_hash. 

hash1 = { a: 12, b: 15, c: 128 }
hash2 = { b: 20, d: 74, e: 256 }

new_hash = hash1.merge(hash2)
p hash1 # unmodified hash1
p new_hash

# merge! = Adds the contents of other_hash to hsh. If no block is specified, 
# entries with duplicate keys are overwritten with the values from other_hash, 
# otherwise the value of each duplicate key is determined by calling the block with the key, 
# its value in hsh and its value in other_hash.

hash1 = { a: 12, b: 15, c: 128 }
hash2 = { b: 20, d: 74, e: 256 }

new_hash = hash1.merge!(hash2)
p hash1 # hash1 has been modified
p new_hash

# Using some of Ruby's built-in Hash methods, write a program that loops 
# through a hash and prints all of the keys. Then write a program that does the same thing 
# except printing the values. Finally, write a program that prints both.

my_hash = { name: "John", age: 45, occupation: "plumber" }

my_hash.each { |key, value| puts key }
my_hash.each { |key, value| puts value }
my_hash.each { |key, value| puts "The key is #{key} and value is #{value}." }

# Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]

# What method could you use to find out if a Hash contains a specific value in it? 
# Write a program to demonstrate this use.

puts person.has_value?("web developer")

# Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in a different order. 
# Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

anagrams = {}

words.each do |word|
  key = word.split("").sort.join
  if anagrams.has_key?(key)
    anagrams[key].push(word)
  else
    anagrams[key] = [word]
  end
end

anagrams.each { |key, value| p key}
anagrams.each { |key, value| p value}

# Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?
# Answer: The first one will have symbol as key and the second string "hi there" as key

# If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array

# A. We're missing keys in an array variable.
# B. There is no method called keys for Array objects.
# C. keys is an Array object, but it hasn't been defined yet.
# D. There's an array of strings, and we're trying to get the string keys out of the array, 
# but it doesn't exist.

# Answer: B

