class Game
    def update_guess_word(guess)
        if @secret_word.include? guess
            @correct_guess_letters.push(guess)
            @secret_word.split('').each_with_index {|char, i|
            if char == guess
                @guess_word[i] = guess
            end
            }
        else
            @wrong_guess_letters.push(guess)
        end
        
    end
end