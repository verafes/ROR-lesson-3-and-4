# guesser - computer tries to guess a number
loop do
  puts "Think of a number between 1 and 100."
  low = 1
  high = 100
  correct_guess = nil

  while low <= high
    guess = (low + high) / 2
    puts "Is your number #{guess}?"
    print "Please answer 'too low', 'too high', or 'correct': "
    user_response = gets.chomp.downcase

    case user_response
    when 'too low'
      if guess >= high
        puts "Hmm, your answer doesn't seem right! #{guess} can't be too low."
        break
      end
      low = guess + 1
    when 'too high'
      if guess <= low
        puts "Hmm, your answer doesn't seem right! #{guess} can't be too high."
        break
      end
      high = guess - 1
    when 'correct'
      correct_guess = guess
      break
    else
      puts "Invalid response. Please enter 'too low', 'too high', or 'correct'."
    end
  end

  if correct_guess
    puts "Bingo! I've correctly guessed your number: #{correct_guess}"
  else
    puts "Your responses seem to be conflicting. Let's try again."
  end

  print "Would you like to play again? (yes/no): "
  restart_game = gets.chomp.downcase
  break unless restart_game == 'yes' || restart_game == 'y'
end

puts "Thanks for playing!"
