# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

# a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Same as above, but only print out values greater than 5.
# a.each { |num| puts num }

# a.each do |num|
#   if num > 5
#     puts num
#   end
# end

# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
# new = []
# a.each do |num|
#   if num.odd?
#     new << num
#     puts new
#   end
# end

# new_array = a.select do |num|
#   num % 2 != 0
# end

# puts new_array

# Append "11" to the end of the original array. Prepend "0" to the beginning.

# a.push(11)
# puts a

# a.unshift(0)
# puts a

# Get rid of "11". And append a "3".
# a.pop
# puts a

# a.push(3)
# puts a

# Get rid of duplicates without specifically removing any one value.
# a.uniq
# puts a

# What's the major difference between an Array and a Hash?

# An array is a list of objects; a hash includes key/value pairs.

# hash = {dog: 'Nicki', cat: 'Peanut', cat: 'Zadie'}
# hash = {:dog => 'Nicki', :cat => 'Peanut', :cat => 'Zadie'}

# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.

# 2. Add to this hash the key:value pair `{e:5}`

# 3. Remove all key:value pairs whose value is less than 3.5

# h = {a:1, b:2, c:3, d:4}
# h[:b]

# h[:e] = 5

# h.delete_if {|k,v| v < 3.5}

# puts h

# Can hash values be arrays? Can you have an array of hashes? (give examples)

# Yes, you can have an array of hash values and an array of hashes.

# hash = {pets: ['Nicki', 'Zadie', 'Peanut', 'Jasper']} 
# array = [{dog:'Nicki', cat:'Peanut'}, {dog:'Jasper', cat:'Zadie'}]

# Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]

# puts contacts
# contacts = {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}, "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}}

# # Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
# puts contacts["Joe Smith"][:email]
# puts contacts["Sally Johnson"][:phone]

# Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:  contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}


# contacts = {"Joe Smith" => {}}

# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
            
# fields = [:email, :address, :phone]


# contacts.each do |name, hash|
#   fields.each do |field|
#     hash[field] = contact_data.shift
#   end
# end

# puts contacts

# As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}, "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}}

# fields = [:email, :address, :phone]

# contacts.each_with_index do |(name, hash), idx|
#   fields.each do |field|
#     hash[field] = contact_data[idx].shift
#   end
# end

# puts contacts

# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if { |word| word.start_with?("s") }

# puts arr

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if { |word| word.start_with?("s", "w")}

# puts arr

# Take the following array:
# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']

# # # and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
# # a.flatten
# # new = []

# # a.each do |string|
# #   new << string.split
# # end

# # puts new

# a = a.map { |pairs| pairs.split }
# a = a.flatten
# print a

# Return a method that evaluates whether a word is an anagram.
# { 'acrs' => ['cars', 'racs', 'scar']}
# a = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']

# b = a.group_by { |element| element.downcase.chars.sort }.values

# print b

# Implement FizzBuzz. Write a program that prints the integers from 1 to 100. But for multiples of three print “Fizz” instead of the number, and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.


  # (1..100).each do |num|
  #   if num % 3 == 0 && num % 5 == 0
  #     puts "FizzBuzz"
  #   elsif num % 5 == 0
  #     puts "Buzz"
  #   elsif num % 3 == 0 
  #     puts "Fizz"
  #   else
  #     puts num
  #   end
  # end

# N = gets.strip.to_i

# if N % 2 == 1 
#     print "Weird"
# elsif N % 2 == 0 && (N > 1 && N < 6) || (N > 20)
#     print "Not Weird"
# else N % 2 == 0 && N == 6..20
#     print "Weird"
# end

# Smash Words
words = [].join(' ')

puts words