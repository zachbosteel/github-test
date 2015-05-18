class ConnectFour
  def initialize
    puts "Welcome to Connect Four!"
    @board = [
     ["-", "-", "-", "-", "-", "-"],
     ["-", "-", "-", "-", "-", "-"],
     ["-", "-", "-", "-", "-", "-"],
     ["-", "-", "-", "-", "-", "-"],
     ["-", "-", "-", "-", "-", "-"],
     ["-", "-", "-", "-", "-", "-"],
     ["-", "-", "-", "-", "-", "-"],
    ]
    @column = ""
    @key = 1
    @printboard = []
    @board.each do |row|
      x = row.join
      @printboard << x
    end
    puts @printboard
  end
  def choosecolumn
    @printboard.clear
    puts "Please choose a column – 1 through 6 – to drop your piece into."
    @column = gets.chomp.to_i
    @column -= 1
    @board.reverse_each do |row|
      if row[@column] == "-"
        row[@column] = "X"
        break
      else
        next
      end
    end
    @board.each do |row|
      x = row.join
      @printboard << x
    end
    puts @printboard
  end
  def choosecolumn2
    @printboard.clear
    puts "Next player, please choose a column – 1 through 6 – to drop your piece into."
    @column = gets.chomp.to_i
    @column -= 1
    @board.reverse_each do |row|
      if row[@column] == "-"
        row[@column] = "O"
        break
      else
        next
      end
    end
    @board.each do |row|
      x = row.join
      @printboard << x
    end
    puts @printboard
  end
end

y = ConnectFour.new

loop do
  y.choosecolumn
  y.choosecolumn2
  puts "Keep playing?"
  response = gets.chomp
  if response == "yes"
    next
  elsif response == "no"
    puts "Ok. Thanks for playing"
    exit
  end
end