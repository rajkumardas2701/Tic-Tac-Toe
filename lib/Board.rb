class Board
  def initialize(board, win_criteria)
    @board = board
    @win_criteria = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
  [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  end
  
  board = w%[- - - - - - - - -]

  def update_board(position, value)
    board[position.to_i - 1] = value
  end
  
  def game_won?(choice, won = false)
    win_criteria.each do |x|      
      x.each do |y|
        i = 0
        while i<= 2 
        if board[y] != choice
          return false
        else
          next
        end
        return true
      end

    end
  end

  def continue_game?
    board.each do |x|
      return if x == '-'? true : false
    end

  end

end