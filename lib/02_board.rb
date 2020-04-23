class Board

	attr_accessor :array_a, :array_b, :array_c, :array

	def initialize

    @array = []
    for i in 0..8
    	mark1 = "x"
    	mark2 = "a#{i+1}"
			b_case = BoardCase.new(mark1,mark2)
      @array[i] = b_case
   	end

    @array_a = []
		@array_b = []
		@array_c = []

		@array_a = [" "," " ," " ]
		@array_b = [" "," " ," " ]
		@array_c = [" "," " ," " ]

		@array_1 = [" "," " ," " ]
		@array_2 = [" "," " ," " ]
		@array_3 = [" "," " ," " ]

		@array_a1c3 = [" "," " ," " ]
		@array_c1a3 = [" "," " ," " ]

  end

  def build

  	puts "         1           2           3      "
  	puts "   -------------------------------------"
		puts "   |           |           |           |"
		puts " a |     #{@array_a[0]}     |     #{@array_a[1]}     |     #{@array_a[2]}     |"
		puts "   |           |           |           |"
		puts "   -------------------------------------"
		puts "   |           |           |           |"
		puts " b |     #{@array_b[0]}     |     #{@array_b[1]}     |     #{@array_b[2]}     |"
		puts "   |           |           |           |"
		puts "   -------------------------------------"
		puts "   |           |           |           |"
		puts " c |     #{@array_c[0]}     |     #{@array_c[1]}     |     #{@array_c[2]}     |"
		puts "   |           |           |           |"
		puts "   -------------------------------------"

  end

  def fill(choice, mark)

  	if choice == "a1" || choice == "a2" || choice == "a3" || choice == "b1" || choice == "b2" || choice == "b3" || choice == "c1" || choice == "c2" || choice == "c3"

  		if choice == "a1"
  			if (@array_a[0] == " ")
  				@array_a[0] = mark
  				@array_1[0] = mark
  				@array_a1c3[0] = mark
  			else
  				puts "   This box is alredy filled! You skip the turn.."
  				print "   Press <enter> to continue "
					gets.chomp
  			end
  		end
  		if choice == "a2"
  			if (@array_a[1] == " ")
  				@array_a[1] = mark
  				@array_2[0] = mark
  			else
  				puts "   This box is alredy filled! You skip the turn.."
  				print "   Press <enter> to continue "
					gets.chomp
  			end
  		end
  		if choice == "a3"
  			if (@array_a[2] == " ")
  				@array_a[2] = mark
  				@array_3[0] = mark
  				@array_c1a3[2] = mark
  			else
  				puts "   This box is alredy filled! You skip the turn.."
  				print "   Press <enter> to continue "
					gets.chomp
  			end
  		end

  		if choice == "b1"
  			if (@array_b[0] == " ")
  				@array_b[0] = mark
  				@array_1[1] = mark
  			else
  				puts "   This box is alredy filled! You skip the turn.."
  				print "   Press <enter> to continue "
					gets.chomp
  			end
  		end
  		if choice == "b2"
  			if (@array_b[1] == " ")
  				@array_b[1] = mark
  				@array_2[1] = mark
  				@array_a1c3[1] = mark
  				@array_c1a3[1] = mark
  			else
  				puts "   This box is alredy filled! You skip the turn.."
  				print "   Press <enter> to continue "
					gets.chomp
  			end
  		end
  		if choice == "b3"
  			if (@array_b[2] == " ")
  				@array_b[2] = mark
  				@array_3[1] = mark
  			else
  				puts "   This box is alredy filled! You skip the turn.."
  				print "   Press <enter> to continue "
					gets.chomp
  			end
  		end
  		if choice == "c1"
  			if (@array_c[0] == " ")
  				@array_c[0] = mark
  				@array_1[2] = mark
  				@array_c1a3[0] = mark
  			else
  				puts "   This box is alredy filled! You skip the turn.."
  				print "   Press <enter> to continue "
					gets.chomp
  			end
  		end
  		if choice == "c2"
  			if (@array_c[1] == " ")
  				@array_c[1] = mark
  				@array_2[2] = mark
  			else
  				puts "   This box is alredy filled! You skip the turn.."
  				print "   Press <enter> to continue "
					gets.chomp
  			end
  		end
  		if choice == "c3"
  			if (@array_c[2] == " ")
  			@array_c[2] = mark
  			@array_3[2] = mark
  			@array_a1c3[2] = mark
  			else
  				puts "   This box is alredy filled! You skip the turn.."
  				print "   Press <enter> to continue "
					gets.chomp
  			end
  		end

  		else
  			puts "   Wrong input! You skip the turn.."
  			print "   Press <enter> to continue "
				gets.chomp
  		end

  	end

  def is_one_player_win?

  	str_a = @array_a[0] + @array_a[1] + @array_a[2]
  	str_b = @array_b[0] + @array_b[1] + @array_b[2]
  	str_c = @array_c[0] + @array_c[1] + @array_c[2]

  	str_1 = @array_1[0] + @array_1[1] + @array_1[2]
  	str_2 = @array_2[0] + @array_2[1] + @array_2[2]
  	str_3 = @array_3[0] + @array_3[1] + @array_3[2]

  	str_a1c3 = @array_1[0] + @array_2[1] + @array_3[2]
  	str_c1a3 = @array_1[2] + @array_2[1] + @array_3[0]


  	if str_a == "xxx" || str_b == "xxx" || str_c == "xxx" || str_1 == "xxx" || str_2 == "xxx" || str_3 == "xxx" || str_a1c3 == "xxx" || str_c1a3 == "xxx"
  		return true
  	end
  	if str_a == "ooo" || str_b == "ooo" || str_c == "ooo" || str_1 == "ooo" || str_2 == "ooo" || str_3 == "ooo" || str_a1c3 == "ooo" || str_c1a3 == "ooo"
  		return true
  	else
  		return false
  	end

  end

end