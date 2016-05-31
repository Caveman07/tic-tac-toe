class Tic_Tac_Toe

	@@board_hash = { 1 => 0, 2 => 0 3 => 0, 4 => 0, 5 => 0, 6 => 0, 7 => 0, 8 => 0, 9 => 0}
	@@playerswitch = 0
	
	def board() #prints board  #prints on each line if line>3 (how to do it??)
		@@board_hash.each do 
			|position,sign|
				if sign == 0 
				 puts "_" 
				else puts sign
				end
			end
	end

	def move() #accepts a move and prints it on the board; how to decide which player's move?
		 #if player 1 moves player = 0, else 1

		    while @@playerswitch = 0

		    	puts "Player 1 please choose any free place to put <x> from 1-9"  #(here i need ask input from a Player 1 and it has to be a number 1-9 and it has to be movebale)
		        number = gets 
		            if number =~ /^[1-9]/ && movebale(number) #check if the number within range 1-9 and the space is empty
		             	@@board_hash[number] = "x" #puts x for Player 1
		             	board() #prints the board
						unless winordraw
							@@playerswitch += 1
						end
					else 
					   puts "Your input is not a number or the space is taken"
					   move() #start all over again	
					end

		    else 
		        puts "Player 2 please choose any free place to put <o> from 1-9"  #(here i need ask input from a Player 1 and it has to be a number 1-9 and it has to be movebale)
		        number = gets 
		            if number =~ /^[1-9]/ && movebale(number) #check if the number within range 1-9 and the space is empty
		             	@@board_hash[number] = "o" #puts o for Player 2
		             	board() #prints the board
						unless winordraw
							@@playerswitch -= 1
						end
					else 
					   puts "Your input is a correct number or the space is taken"
					   move() #start all over again		
					end
		    end
	end

		         
	
	#check if a player can place its sign on that position 
	def movable(input)
		if @@board_hash[input] = 0
			return true
		else 
			false 
		end
	end 



	end

	def winordraw
		@@board_hash.any? do |position, sign| 
		if sign = 0
            return false 
        else 
        	
        	#checks if any player has won?




		#checks if all spaces are taken
		#if yes and not win then print draw
		#if yes and win 
		          #decide who win 



	 #checks if a game won by any player

	end

	def start
		#starts the game 
	end
end

	#tic_tac_toe() #starts the game and prints board on the command line somehow 
	#Player one is offered to move. Every section is represented by number
	       #so we can print "Player 1, choose a free section to put x from 1-9:"
	       #then we accept, check if it was free, if not we ask to "choose another section, its not empty" 
	       #we check if the game is won if not, 
	         #print the board again and then 
	         #we offer a move to player 2 "Player 2, choose a free section on a board to put y from 1-9"
	          #then we accept, check if it was free, if not we ask to "choose another section, its not empty" 
	               #we check if the game is won if not, 
	                    #print the board again and then we offer a move to another player
	                        #this continue until the game is won or there is a draw if all sections are full but the game is not won 
	                            #so we need another method which checks if all spaces are taken but the game is not won. 

e = Tic_Tac_Toe.new
e.board

