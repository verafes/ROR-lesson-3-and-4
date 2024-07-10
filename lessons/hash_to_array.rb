# 5 keys and 5 values as a hash
def get_user_data
    data = {}

    puts "We need to collect 5 keys and 5 values."
    5.times do |index|
        puts "Please enter key #{index + 1}:"
        key = gets.chomp

        puts "Please enter value #{index + 1}:"
        value = gets.chomp

        data[key] = value
    end

    data
end

# prints out an array of keys and an array of values
def hash_array(hash)
    keys = hash.keys
    values = hash.values
    return [keys, values]
end

# calling methods to print arrays
user_data = get_user_data
arr = hash_array(user_data)

puts "arr: #{arr}"
puts "Keys: #{arr[0]}"
puts "Values: #{arr[1]}"
