# Guessing a number game
loop do
    secret_number = rand(1..100)
    # print for debugging
    puts "Secret number: #{secret_number}"
    puts "\n"

    puts "Guess a number between 1 and 100."

    loop do
        # ask user for number
        print "Enter a number: "
        user_input = gets.chomp

        # check if input is a non-digit
        if user_input =~ /\D/
            puts "Invalid input. Please enter a valid number between 1 and 100."
            next
        end

        guess = user_input.to_i

        # check guess is within the valid range
        if guess < 1 || guess > 100
            puts "Your guess is not acceptable. Please enter a number between 1 and 100."
            next
        end

        if guess < secret_number
            puts "Your guess is too low. Please try again: "
        elsif guess > secret_number
            puts "Your guess is too high. Please try again: "
        else
            puts "Great job! You've correctly guessed the number: #{secret_number}"
            break
        end
    end

    # ask if user wants to play again
    print "Do you want to play again? (yes/no): "
    response = gets.chomp.downcase

    unless response.downcase == 'yes' || response.downcase == 'y'
        puts "Thank you for playing!"
        break
    end
end