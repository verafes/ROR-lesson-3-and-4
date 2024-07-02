person = {}

puts "Enter your first name: "
person[:first_name] = gets.chomp

puts "Enter your last name: "
person[:last_name] = gets.chomp

puts "Enter your age: "
age = gets.chomp
person[:age] = age

puts "Enter your street address: "
person[:street_address] = gets.chomp

puts "Enter your city: "
person[:city] = gets.chomp

puts "Enter your state: "
person[:state] = gets.chomp

puts "Your information: "
puts person

puts "Keys in the hash: "
puts person.keys

puts "Values in the hash: "
puts person.values

person[:first_name] = person[:first_name].capitalize
person[:last_name] = person[:last_name].capitalize
person[:street_address] = person[:street_address].capitalize
person[:city] = person[:city].capitalize
person[:state] = person[:state].upcase

puts "Here is your updated information: "
puts person
