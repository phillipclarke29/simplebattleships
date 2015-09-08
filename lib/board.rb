class Game

  attr_accessor :boat, :shot

  def initialize
      @boat=[]
      @shot
      @check
      @check_shot
      @check_shot1
      @check_shot2


  end

  def add_boat(x, y)
    @boat = [[x,y],0]
    puts "I have hidden a horizontal boat with a length of 3"
    puts "somewhere on a 10 x 10 grid"
    puts "can you guess where?"


  end

  def shoot(x,y)
  @shot = [x,y]
  hit_boat?
  end

  def hit_boat?
    @check = @boat[0]
    @check_shot1 = [@boat[0][0],@check[1]+1]
    @check_shot2 = [@boat[0][0],@check[1]+2]
    if @boat[0] == @shot
      puts "hit! Well done you have hit my boat"
      @boat[1] = @boat[1] + 1
        if @boat[1] == 3
        puts "You have sunk my ship - you win!"
        end
    elsif @check_shot1 == @shot
      puts "hit! Well done you have hit my boat"
      @boat[1] = @boat[1] + 1
        if @boat[1] == 3
        puts "You have sunk my ship - you win!"
        end
    elsif @check_shot2 == @shot
      puts "hit! Well done you have hit my boat"
      @boat[1] = @boat[1] + 1
        if @boat[1] == 3
        puts "You have sunk my ship - you win!"
        end
    else
      puts 'missed -try again, remember we are playing on a 10 x 10 grid'
    end
  end

  def grid
    board_layout = Array.new(10, ".").map{|row| Array.new(10, ".")}
  row_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  column_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

  print "\t"
  print row_label.join("\t")
  puts
  board_layout.each_with_index do |row, i|
    print column_label[i]
    print "\t"
    print row.join("\t")
   putsboat
  end

  end

end
