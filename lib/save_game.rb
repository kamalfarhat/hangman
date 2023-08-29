class Game

    def save_game(player)
        saved_game = {
            "secret_word" => @secret_word,
            "num_of_mistakes_left" => @num_of_mistakes_left,
            "correct_guess_letters" => @correct_guess_letters,
            "wrong_guess_letters" => @wrong_guess_letters,
            "guess_word" => @guess_word
        }
        type = player.type
        puts "Enter a name for your game (no special characters)" if type == "1"
        filename = validate_filename(gets.chomp) if type == "1"
        filename = @game_name unless type == "1"
        write_game_data(saved_game, filename, type)
    end

    def validate_filename(filename)
        while !filename.match? /[a-zA-Z0-9]/
            puts "Please enter a valid name (no special characters)"
            filename = gets.chomp
        end
        filename
    end

    def write_game_data(saved_game, filename, type)
        saved_game["game_name"] = filename  
        Dir.mkdir("saved_games") unless Dir.exist?("saved_games")
        f = File.open("saved_games/" + filename, 'w')
        f.puts JSON.dump(saved_game)
        f.close
        puts "Game has been saved successfully!. Thanks for playing " + "Hangman!".green if type == "1"
        puts "Game " + filename.green + " has been updated successfully. Thanks for playing " + "Hangman!".green if type == "2"
    end
end