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
