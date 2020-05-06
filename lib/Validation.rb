class Validation
  def initialize(valid_option, selected_positions)
    valid_options = %w[1 2 3 4 5 6 7 8 9]
    selected_positions = []
  end

  def valid_input(position)
    return valid_options.include?(option_selected) && !selected_positions.include?(option_selected)
  end

  def update_selected_position(position)
    selected_positions.push(option_selected)
  end

end