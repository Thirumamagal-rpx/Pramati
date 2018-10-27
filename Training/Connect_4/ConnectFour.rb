class ConnectFour
  def initialize
    $counter = 0
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
    puts '---------------------------------------------------'
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

  def is_full?(col)
    @board.all? { |row| row[col] != '.' }
  end

   def drop(col)
    row = nil
    @board.to_enum.with_index.reverse_each do |r, i|
      if r[col] == '.'
        row = i
        break
      end
    end
    @board[row][col] = @turn
    $counter+=1
    @last_drop = [row, col]
  end

  def display
    result = ""
    @board.each do |r|
      row = r.join('  ') + "\n"
      result << row
    end
    puts result
  end

  def line_match?
    $count=0;
    directions = [[0, 1], [1, 1], [1, 0], [1, -1], [0, -1], [-1, -1], [-1, 0], [-1, 1]]
    loop do
      return false if directions.empty?
      direction = directions.shift
      disk = @last_drop

      no_match = nil
      3.times do
        disk = next_disk(disk, direction)
        if out_of_board?(disk) || @board[disk[0]][disk[1]] != @turn
          no_match = true
          $count+=1;
          break
        end
      end
      return true unless no_match
    end
  end

  def switch_player
    @turn = (@turn == 'R' ? 'Y' :  'R')
  end

  def gameover
    if @turn == 'R'
      winner = 'RED wins the game!'
    else
      winner = 'YELLOW wins the game!' 
    end
    puts winner
  end

 private

  def next_disk(disk, direction)
    row = disk[0] + direction[0]
    col = disk[1] + direction[1] 
    [row, col]
  end

  def out_of_board?(disk)
    !((0..5).include?(disk[0]) && (0..6).include?(disk[1]))
  end
end

connect_four = ConnectFour.new
connect_four.start
connect_four.display

loop do
  if $counter == 42
    puts "-----------It's a DRAW-------------" 
    break
  end 

  column = connect_four.ask_column
  next if connect_four.is_full?(column)
 
  connect_four.drop(column)
  connect_four.display

  if connect_four.line_match? || $count==4
    connect_four.gameover
    break
  end
  
  connect_four.switch_player
end






