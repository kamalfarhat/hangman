class Game
    def display_results(player)
        if @guess_word.join != @secret_word
            puts `clear`
            puts @guess_word.join(' ') 
            puts "\nYou lose!\n".red
            puts "The secret word was: " + @secret_word.green
            puts "Play Again? (Press Y for Yes and any key for No)"
            choice = gets.chomp           
        else
            puts `clear`
            puts @guess_word.join(' ')
            puts "\nYou win!".green + " Play Again? (Press Y for Yes and any key for No)"
            choice = gets.chomp
        end
        if choice.downcase == "y"
            player.reset()
            game_type = player.get_game_type()
            game = Game.new() if game_type == "1"
            game = Game.load_game() unless game_type == "1"
            if !game
                sleep(2)
                player.type = "1"
                game = Game.new()
                game.play_game(player)
            else
                game.play_game(player)
            end
        end
    end
end