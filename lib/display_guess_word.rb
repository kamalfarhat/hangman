class Game
    def display_guess_word(guess)
        puts `clear`
        if @secret_word.include? guess
            puts "\nGood Job! " + guess.green.bold + " was a good guess"
            puts @guess_word.join (' ')
        else
            puts "\n" + guess.red.bold + " is a wrong guess, please try again"
            puts @guess_word.join (' ')
            @num_of_mistakes_left -= 1
        end
        display_guessed_letters()
        display_mistakes_left()
    end

    def display_guessed_letters()
        if @correct_guess_letters.empty?
            puts "\nYour have guessed the following letters: " + @wrong_guess_letters.join(", ").red
        elsif @wrong_guess_letters.empty?
            puts "\nYour have guessed the following letters: " + @correct_guess_letters.join(", ").green
        else
            puts "\nYour have guessed the following letters: " + @correct_guess_letters.join(", ").green + ", ".green + @wrong_guess_letters.join(", ").red
        end
    end

    def display_mistakes_left()
        if @num_of_mistakes_left == 1
            puts "This is your last chance!\n".red
        else
            puts "You have ".green + @num_of_mistakes_left.to_s.red + " incorrect guesses left, use them wisely!\n".green
        end
    end
end