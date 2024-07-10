require 'faker'

print "Do you want to know a fact about Chuck Norris? (yes/no) "

loop do
    response = gets.chomp.downcase

    if ['yes', 'y', 'yeah', 'yep'].include?(response)
        puts Faker::ChuckNorris.fact
        print "One more (yes)? "
    else
        puts "Okay, have a great day"
        break
    end
end
