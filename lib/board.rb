class Board
  attr_reader :board

  def initialize
    @board = %w[
      _ _ _
      _ _ _
      _ _ _
    ]

    @win_criteria = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ]
  end

  def print_board
    puts "*************\n| #{@board[0]} | #{@board[1]} | #{@board[2]} |
*************\n| #{@board[3]} | #{@board[4]} | #{@board[5]} |
*************\n| #{@board[6]} | #{@board[7]} | #{@board[8]} |
*************"
  end

  def update_board(position, value)
    @board[position.to_i - 1] = value
  end

  def player_won?
    @win_criteria.each do |x|
      one = x[0]
      two = x[1]
      three = x[2]
      return true if @board[one] == @board[two] && @board[one] == @board[three] && @board[one] != '_'
    end
    false
  end

  def full?
    @board.each do |x|
      return false if x == '_'
    end
    true
  end
end
