class Player
    attr_accessor :type
    
    def initialize()
        @type = 0
        welcome
    end

    def reset()
        @type = 0
        welcome
    end

    def welcome()
        puts `clear`
        puts "Welcome to " + "Hangman!".green
        puts "Would you like to play a new game or load a previously saved one?\n\n"
        puts "Press 1 for New Game\n"
        puts "Press 2 to load a previously saved game\n"
    end

    def get_guess()
        puts "Enter a letter (a-z) or enter save to save the game"
        guess = gets.chomp
        if guess != "save"
            while !/[a-zA-Z]/.match(guess)  || guess.length != 1
                puts "please enter a valid guess"
                guess = gets.chomp
            end
        end    
        guess
    end

    def get_game_type()
        @type = gets.chomp
        while @type != "1" && @type != "2"
            puts "please enter a valid code"
            @type = gets.chomp
        end
        @type
    end
end