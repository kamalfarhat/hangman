require "json"
require_relative "string_colors"
require_relative "game"
require_relative "player"
require_relative "display_results"
require_relative "load_game"
require_relative "save_game"
require_relative "get_player_guess"
require_relative "display_guess_word"
require_relative "update_guess_word"
require_relative "generate_secret_word"
require_relative "play_game"

player = Player.new()
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