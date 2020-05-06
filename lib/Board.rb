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

  def update_board(position, value)
    @board[position.to_i - 1] = value
  end
  
  # def player_won?(choice, value=false)
  #   @win_criteria.each do |x|      
  #     x.each do |y|
  #       i = 0
  #       while i<= 2 
  #         if @board[y] != choice
  #           return false
  #         else
  #           next
  #         end
  #       end
  #       return true 
  #     end
  #   end
  # end

  def full?
    @board.each do |x|
      return false if x == '_'
      true
    end
  end
end
