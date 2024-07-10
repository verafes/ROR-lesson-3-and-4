def hangman(word, letters)
    # Validate word
    unless word.is_a?(String) && !word.empty?
        puts "First argument must be a not-empty string, but got #{word}"
        return
    end

    word = word.downcase

    # Validate letters
    unless letters.is_a?(Array) && letters.all? { |letter| letter.is_a?(String) }
        puts "Second argument must be an array of strings, but got #{letters}"
        return
    end

    result = ""
    word.each_char do |char|
        if letters.map(&:downcase).include?(char.downcase)
            result += char
        else
            result += "_"
        end
    end

    result
end

# Test cases
puts hangman("bob", ["b"])
puts hangman("alphabet", ["a", "h"])
puts hangman("ruby", ["r", "y"])
puts hangman("programming", ["p", "g", "m"])
puts hangman("hangman", [])
puts hangman("secret", ["s", "e", "r"])
puts hangman("123", [1])
puts hangman("Abcde", ["a", "B"])
puts hangman("", ["a"])
puts hangman(["a"], ["b"])
puts hangman("abcd", "#")
puts hangman(12345, "5")
puts hangman("12345", 5)
