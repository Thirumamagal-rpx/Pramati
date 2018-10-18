

class Connect
  def initialize
    @turn = 'R'
    @board = [['.', '.', '.', '.', '.', '.', '.'],
              ['.', '.', '.', '.', '.', '.', '.'],
              ['.', '.', '.', '.', '.', '.', '.'],
              ['.', '.', '.', '.', '.', '.', '.'],
              ['.', '.', '.', '.', '.', '.', '.'],
              ['.', '.', '.', '.', '.', '.', '.']]
    @last_drop = nil
  end

  def start
    puts '------------- Welcome to Connect Four -------------'
  end

  def display
    result = ""
    @board.each do |r|
      row = r.join('  ') + "\n"
      result << row
    end
    puts result
    result
  end

  def ask_column
    col = nil
    if @turn == 'R'
      puts "Now is RED's turn."
    else
      puts "Now is YELLOW's turn."
    end

    until ["1", "2", "3", "4", "5", "6", "7"].include?(col) do
      print "Enter column to drop disk: "
      col = gets.chomp
      
    end
    col.to_i - 1
  end

  
    
  def switch_player
    if @turn == 'R'
      @turn = 'Y'
    else
      @turn = 'R'
    end
  end

  def gameover
    if @turn == 'R'
      winner = 'RED wins the game!'
    else
      winner = 'YELLOW wins the game!'
    end
    puts winner
    winner
  end
 
end

  

connect = Connect.new
connect.start
connect.display
connect.ask_column







