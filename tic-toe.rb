class Tic_Tac_Toe

	@@board_array = Array.new(9,0)
	@@playerswitch = 0
	
	def self.board() #prints board  #prints on each line if line>3 (how to do it??)
		@@board_array.each do 
			|sign|
				if sign == 0 
				 puts "_" 
				else puts sign
				end
			end
	end

	def self.move() #accepts a move and prints it on the board; how to decide which player's move?
		 #if player 1 moves player = 0, else 1
		 while winordraw == false

		    if  @@playerswitch == 0

		    	puts "Player 1 please choose any free place to put <x> from 1-9"  #(here i need ask input from a Player 1 and it has to be a number 1-9 and it has to be movebale)
		        number = gets 
		            if number =~ /^[1-9]/ && movable(number) #check if the number within range 1-9 and the space is empty
		             	@@board_array[number.to_i] = "x" #puts x for Player 1
		             	board() #prints the board
							@@playerswitch += 1
						
					else 
					   puts "Your input is not a number or the space is taken"
					   move() #start all over again	
					end

		    else 
		        puts "Player 2 please choose any free place to put <o> from 1-9"  #(here i need ask input from a Player 1 and it has to be a number 1-9 and it has to be movebale)
		        number = gets 
		            if number =~ /^[1-9]/ && movable(number) #check if the number within range 1-9 and the space is empty
		             	@@board_array[number.to_i] = "o" #puts o for Player 2
		             	board() #prints the board
							@@playerswitch -= 1
						
					else 
					   puts "Your input is incorrect number or the space is taken"
					   move() #start all over again		
					end
		    end
		end
	end

		         
	
	#check if a player can place its sign on that position 
	def self.movable(input)
		if @@board_array[input.to_i] = 0
			return true
		else 
			false 
		end
	end 


	def self.winordraw
		@@board_array.each do |sign| 
		  if
        	case sign 
        	when @@board_array[0], @@board_array[1], @@board_array[2]   #case 1
        		return true 
        		puts "game won"
        	when @@board_array[3], @@board_array[4], @@board_array[5]   #case 2
        		puts "game won"
        		return true
        	when @@board_array[6], @@board_array[7], @@board_array[8]   #case 3
        		puts "game won"
        		return true
        	when @@board_array[0], @@board_array[3], @@board_array[6]   #case 4
        		puts "game won"
        		return true
        	when @@board_array[1], @@board_array[4], @@board_array[7]   #case 5
        		puts "game won"
        		return true
        	when @@board_array[2], @@board_array[5], @@board_array[8]   #case 6
        		puts "game won"
        		return true
        	when @@board_array[0], @@board_array[4], @@board_array[8]   #case 7
        		puts "game won"
        		return true	
        	when @@board_array[2], @@board_array[4], @@board_array[6]   #case 8
        		puts "game won"
        		return true		
        	end

          elsif sign == 0
            return false #checks that not all spaces are taken yet and returns false

          else 
              return true
              puts "you guys have draw" 
          end
        end
    end             

	def Tic_Tac_Toe.start
		self.board()
		self.move()

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

Tic_Tac_Toe.start


