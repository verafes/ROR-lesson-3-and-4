def divisible
    numbers = []
    (1..100).each do |num|
        if num % 2 == 0 || num % 3 == 0 || num % 5 == 0
          numbers << num
        end
    end
    numbers
end

puts "All numbers divisible by 2, 3, or 5: #{divisible}"
