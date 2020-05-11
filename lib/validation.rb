class Validation < Board
  attr_reader :selected_positions
  
  def initialize
    @valid_options = %w[1 2 3 4 5 6 7 8 9]
    @selected_positions = []
  end

  def valid_input(position)
    @valid_options.include?(position) && !@selected_positions.include?(position)
  end

  def update_selected_position(position)
    @selected_positions.push(position)
  end
end
