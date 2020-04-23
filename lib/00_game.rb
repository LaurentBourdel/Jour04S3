class Game

	attr_accessor :player1, :player2, :board

	def initialize(player1_name,player2_name)

			@player1 = Player.new(player1_name," ",0,"x")
			@player2 = Player.new(player2_name," ",0,"o")
			@board = Board.new

  end

  def is_new_play?

  	system "clear"
  	new_play = "z"

  	while new_play != "y" || new_play != "n"
  		puts " "
  		puts "Start a new play: y/n ?"
  		puts "------------------------------------------------------"
			print "> "
			new_play = gets.chomp
			if new_play == "y"
				return true
			else
				if new_play == "n"
					puts "Ok, see you soon.."
					return false
				else
					puts "try again.."
				end
			end
		end

  end

  def is_player1_start?

  	starting_player ="0"
  	
		while starting_player != "1" || starting_player != "2"
			puts " "
			puts "Player starting: 1/2 ?"
			puts "------------------------------------------------------"
  		print "> "
			starting_player = gets.chomp
  		if starting_player == "1"
				return true
			else
				if starting_player == "2"
					return false
				else
					puts "try again.."
				end
			end
		end

	end

	def starting_player

		if is_player1_start? == true
			player = @player1
		else
			player = @player2
		end

		return player

	end

	def score_display

		system "clear"
  	puts " "
  	puts "Scores - (Player1) #{@player1.name}: #{@player1.count}, (Player2) #{@player2.name}: #{@player2.count} "
  	puts "------------------------------------------------------"
  	puts " "

  end

	def fill_board (choice,mark)

  	@board.fill(choice,mark)

  end

  def build_board

  	@board.build

  end

  def new_board

  	@board = Board.new

  end

  def play

  	if is_player1_start? == true
			player = @player1
		else
			player = @player2
		end

		score_display
  	new_board
  	build_board
  
		for i in 0..8
			
			puts " "
			puts "   #{player.name} plays.. (tape: a1, b2..)"
  		print "   > "
	  	player.choice = gets.chomp
	  	fill_board(player.choice,player.mark)
	  	score_display
	  	build_board

	  	check = @board.is_one_player_win?
			if check == true
				player.count = player.count + 3
				system "clear"
				score_display
				puts "> #{player.name} won! Score + 3.."
				puts "> Press <enter> to continue "
				puts ""
				gets.chomp
				puts "   "
				break
			end
			
			if player == @player1
				player = @player2
			else
			  player = @player1
			end

			if i == 8
				@player1.count = @player1.count + 1
				@player2.count = @player2.count + 1
				system "clear"
				score_display
				puts "> Drawn game! Scores + 1.."
				puts "> Press <enter> to continue "
				puts ""
				gets.chomp
				puts "   "
			end

		end
	
  end

end