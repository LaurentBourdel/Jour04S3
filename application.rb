require 'bundler'
Bundler.require

require_relative 'lib/00_game'
require_relative 'lib/01_player'
require_relative 'lib/02_board'
require_relative 'lib/03_boardcase'
require_relative 'lib/04_show'

def perform

	system "clear" 
	puts " "
	puts "------------------------------------------------------"
	puts "|                                                    |"
	puts "|                                                    |"
	puts "|              Welcome to 'THE MORPION'              |"
	puts "|               Luv'na, I love you !!                |"
	puts "|                                                    |"
	puts "|                                                    |"
	puts "------------------------------------------------------"
	puts " "
	puts "           Press <enter> to start the game            "
	gets.chomp

	system "clear" 
	puts " "
	puts "Name of the two players ?"
	puts "------------------------------------------------------"
	puts "Player 1 ?"
	print "> "
	player_1_name = gets.chomp
	puts "Player 2 ?"
	print "> "
	player_2_name = gets.chomp


	my_game = Game.new(player_1_name, player_2_name)
	start_game = my_game.is_new_play?

	while start_game == true 

		my_game.play
		start_game = my_game.is_new_play?

	end

end

perform