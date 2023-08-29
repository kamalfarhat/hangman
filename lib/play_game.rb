class Game
    def play_game(player)
        generate_secret_word() if @secret_word.empty?
        guess = ''
        display_hints()
        while @guess_word.join != @secret_word && @num_of_mistakes_left > 1 && guess.downcase != "save"
            display_guess_word(guess) unless guess == ''
            guess = get_player_guess(player)
            update_guess_word(guess) unless guess == ''
        end
        display_results(player) if guess != "save"
    end

    def display_hints()
        puts `clear`
        puts "The secret word has " + @secret_word.length.to_s.green + " letters\n"
        if @num_of_mistakes_left == 7
            puts "You are allowed to make " + @num_of_mistakes_left.to_s.red + " incorrect guesses only, Good luck!\n\n"
        else
            if @correct_guess_letters.empty?
                puts "Your have guessed the following letters: " + @wrong_guess_letters.join(", ").red
            elsif @wrong_guess_letters.empty?
                puts "Your have guessed the following letters: " + @correct_guess_letters.join(", ").green
            else
                puts "Your have guessed the following letters: " + @correct_guess_letters.join(", ").green + ", ".green + @wrong_guess_letters.join(", ").red
            end
            if @num_of_mistakes_left == 1
                puts "This is your last chance!\n".red
            else
                puts "You have ".green + @num_of_mistakes_left.to_s.red + " incorrect guesses left, use them wisely!\n".green
            end
        end
        puts @guess_word.join(' ') + "\n\n"
    end
end