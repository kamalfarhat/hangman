class Game
    def self.load_game()
        if Dir.exist?("saved_games")
            saved_games = Dir.children("saved_games")
            if saved_games.empty?
                puts "There are no previously saved games, you have to play a new game and save it first".red
            else
                puts "choose a saved game\n" + saved_games.join("\n")
                filename = gets.chomp
                file_found = validate_filename(saved_games, filename)
                while !file_found
                    puts "please enter a valid game name"
                    filename = gets.chomp
                    file_found = validate_filename(saved_games, filename)
                end
                read_game_data(filename)
            end
        else
            puts "There are no previously saved games, you have to play a new game and save it first".red
        end
    end

    def self.validate_filename(saved_games, filename)
        file_found = false
        saved_games.each { |game| 
            if game == filename
                file_found = true
            end          
            }
        file_found
    end

    def self.read_game_data(filename)
        game = File.open("saved_games/" + filename, 'r')
        data = JSON.load game
        self.new(data['secret_word'], data['num_of_mistakes_left'], data['correct_guess_letters'], data['wrong_guess_letters'], data['guess_word'], data['game_name'])
    end
end