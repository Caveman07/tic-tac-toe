class Tic_Tac_Toe

	@@board_array = Array.new(9,0)
	@@playerswitch = 0
	@@game_over = false 
	
	def self.board()
            puts " #{@@board_array[0] == 0 ? " " : @@board_array[0] } | #{@@board_array[1] == 0 ? " " : @@board_array[1] } | #{@@board_array[2] == 0 ? " " : @@board_array[2] } "
            puts "-----------"
            puts " #{@@board_array[3] == 0 ? " " : @@board_array[3] } | #{@@board_array[4] == 0 ? " " : @@board_array[4] } | #{@@board_array[5] == 0 ? " " : @@board_array[5] } "
            puts "-----------"
            puts " #{@@board_array[6] == 0 ? " " : @@board_array[6] } | #{@@board_array[7] == 0 ? " " : @@board_array[7] } | #{@@board_array[8] == 0 ? " " : @@board_array[8] } "
    end
	

	def self.move() 
		 #if player 1 moves player = 0, else 1
		 while @@game_over == false do

		    if  @@playerswitch == 0

		    	puts "Player 1 please choose any free place to put <x> from 1-9"  #(here i need ask input from a Player 1 and it has to be a number 1-9 and it has to be movebale)
		        number = gets 
		            if number =~ /^[1-9]/ && movable(number) #check if the number within range 1-9 and the space is empty
		             	@@board_array[number.to_i - 1] = "x" #puts x for Player 1
		             	board() #prints the board
		             	self.winordraw 
		             	break if @@game_over == true
							@@playerswitch += 1
						
					else 
					   puts "Your input is not a number or the space is taken"
					   self.move() #start all over again	
					end

		    else 
		        puts "Player 2 please choose any free place to put <o> from 1-9"  #(here i need ask input from a Player 1 and it has to be a number 1-9 and it has to be movebale)
		        number = gets 
		            if number =~ /^[1-9]/ && movable(number) #check if the number within range 1-9 and the space is empty
		             	@@board_array[number.to_i - 1 ] = "o" #puts o for Player 2
		             	board() #prints the board
		             	self.winordraw
		             	break if @@game_over == true 
							@@playerswitch -= 1
						
					else 
					   puts "Your input is incorrect number or the space is taken"
					   self.move() #start all over again		
					end
		    end
		end
	end

		         
	
	#check if a player can place its sign on that position 
	def self.movable(input)
		if @@board_array[input.to_i - 1] == 0
			return true
		else 
			false 
		end
	end 


	def self.winordraw
		@@board_array.each do |sign| 

		  if sign == 0
                  @@game_over = false #checks that not all spaces are taken yet and returns false


		  elsif @@board_array[0] == sign && @@board_array[1] == sign && @@board_array[2] == sign   #case 1
        		puts "game won by Player #{@@playerswitch == 0 ? "1" : "2" }"
        		@@game_over = true

           elsif @@board_array[3] == sign && @@board_array[4] == sign && @@board_array[5] == sign   #case 2
        		puts "game won by Player #{@@playerswitch == 0 ?  "1" :  "2" }"
        		@@game_over = true

           elsif @@board_array[6] == sign && @@board_array[7] == sign && @@board_array[8] == sign  #case 3
        		puts "game won by Player #{@@playerswitch == 0 ? "1" : "2" }"
        		@@game_over = true

           elsif @@board_array[0] == sign && @@board_array[3] == sign && @@board_array[6] == sign  #case 4
        		puts "game won by Player #{@@playerswitch == 0 ? "1" :  "2" }"
        		@@game_over = true

           elsif @@board_array[1] == sign && @@board_array[4] == sign && @@board_array[7] == sign  #case 5
        		puts "game won by Player #{@@playerswitch == 0 ? "1" : "2" }" 
        		@@game_over = true

           elsif @@board_array[2] == sign && @@board_array[5] == sign && @@board_array[8] == sign   #case 6
        		puts "game won by Player #{@@playerswitch == 0 ? "1" : "2" }"
        		@@game_over = true

           elsif @@board_array[0] == sign && @@board_array[4] == sign && @@board_array[8] == sign  #case 7
        		puts "game won by Player #{@@playerswitch == 0 ? "1" : "2" }"
        		@@game_over = true

           elsif @@board_array[2] == sign && @@board_array[4] == sign && @@board_array[6] == sign   #case 8
        		puts "game won by Player #{@@playerswitch == 0 ?  "1" : "2" }"
        		@@game_over = true

           else
                 	 
           	  #puts "you guys have draw" 
              @@game_over = true
               
           end
        end
    end             

	def Tic_Tac_Toe.start
		self.board()
		self.move()

		#starts the game 
	end
	def Tic_Tac_Toe.testmovable
		@@board_array[5] = "x"
		if self.movable(6) 
		       puts "some shit" 
		   else
		      puts "ok" 
		  end

		#tests the the movable function
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


