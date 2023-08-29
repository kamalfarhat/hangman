class Game
    def get_player_guess(player)
        guess = player.get_guess()
        guess_already_made = analyze_guess(player, guess)
        while guess_already_made
            puts "You have already made this guess, please try again!".red
            guess = player.get_guess()
            guess_already_made = analyze_guess(player, guess)
        end
        guess
    end

    def analyze_guess(player, guess)
        guess_already_made = false
        if guess.downcase == "save"
            save_game(player)
        elsif (@correct_guess_letters + @wrong_guess_letters).each {|letter|
            if guess == letter
                guess_already_made = true
            end
        }
        end
        guess_already_made
    end
end