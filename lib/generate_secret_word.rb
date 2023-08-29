class Game
    def generate_secret_word()
        hangman_word_list = []
        dictionary = File.read('data/dictionary.txt')
        dictionary.lines { |word| 
        if word.length.between?(5,12) 
            hangman_word_list.push(word.strip)
        end
        }
        @secret_word = hangman_word_list.sample
        @guess_word = Array.new(@secret_word.length, "-")
    end
end