class Game

  attr_accessor :boat, :shot

  def initialize
      @boat=[] # the array that will hold the boat
      @shot # we might need to use this - otherwise delete
      # @check we, do not need these any
      # @check_shot
      # @check_shot1
      # @check_shot2


  end

  def add_boat(x, y) # get the boat the opponent created
    @boat = [[x,y],0] # set the boat's health to 0 - later this will need to become an array of boats
    puts "I have hidden a horizontal boat with a length of 3"
    puts "somewhere on a 10 x 10 grid"
    puts "can you guess where?"


  end

  def shoot(x,y) #get the shot with a co-ordinate
  @shot = [x,y]
  hit_boat? #run the hit boat method
  end

  def hit_boat? # a real mess so lots of DRYING needed - could be adapted to check whether shot has been used before or boats are not touching - module? ONLY WORKS WITH HORIZONTAL THINGS
    @check = @boat[0] #ugly - needed for the two checks below - could not access just the first element of @boat and manipulate it - bad code
    @check_shot1 = [@boat[0][0],@check[1]+1] #even uglier - sets the co-ord one to the right of the shot - only works with horizontal boats
    @check_shot2 = [@boat[0][0],@check[1]+2] #even even uglier - sets the co-ord one to the right of the shot
    if @boat[0] == @shot #have you hit the first part of the boat
      puts "hit! Well done you have hit my boat"
      @boat[1] = @boat[1] + 1 #have you killed my boat -
        if @boat[1] == 3
        puts "You have sunk my ship - you win!"
        end
    elsif @check_shot1 == @shot #have you hot the second part - should we do ths the other way round?
      puts "hit! Well done you have hit my boat"
      @boat[1] = @boat[1] + 1
        if @boat[1] == 3
        puts "You have sunk my ship - you win!"
        end
    elsif @check_shot2 == @shot #have you hit the 3rd part
      puts "hit! Well done you have hit my boat"
      @boat[1] = @boat[1] + 1
        if @boat[1] == 3
        puts "You have sunk my ship - you win!"
        end
    else
      puts 'missed -try again, remember we are playing on a 10 x 10 grid'
    end
  end



end
