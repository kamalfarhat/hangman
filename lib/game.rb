class Game
    def initialize(secret_word="", num_of_mistakes_left=7, correct_guess_letters=[], wrong_guess_letters=[], guess_word=[], game_name = "")
        @secret_word = secret_word
        @num_of_mistakes_left = num_of_mistakes_left
        @correct_guess_letters = correct_guess_letters
        @wrong_guess_letters = wrong_guess_letters
        @guess_word = guess_word
        @game_name = game_name
    end
end