class Board
  def initialize(board)
    @board = board
  end
  
  board = w%[- - - - - - - - -]

  def update_board(position, value)
    board[position.to_i] = value
  end
  

end