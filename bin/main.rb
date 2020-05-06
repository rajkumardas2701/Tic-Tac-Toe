# !/usr/bin/env ruby

valid_options = %w[1 2 3 4 5 6 7 8 9]
selected_positions = []
game_won = false
board = 1
while board <= valid_options.size
  puts 'Player 1 turns'
  puts 'player_1 select a number from 1 to 9'
  # prompt user for a selection
  option_selected = gets.chomp
  # check the option seclected by the player is valid and the position is not taken!
  until valid_options.include?(option_selected) && !selected_positions.include?(option_selected)
    puts 'please put a number between 1 to 9 and make sure it has not been selected'
    option_selected = gets.chomp
  end
  # update the board
  puts "The board has now been updated, player_1 played at position #{option_selected}"
  # selected_positions.push(option_selected)
  puts 'The board is displayed'

  return puts 'player_1 has won the game' if game_won
  return puts 'The game has ended in draw' if board == valid_options.size

  board += 1

  puts 'Player 2 turn'
  puts 'player_2 select a number from 1 to 9'
  # prompt user for a selection
  option_selected = gets.chomp
  # check the option seclected by the player is valid and the position is not taken
  # until valid_options.include?(option_selected) && !selected_positions.include?(option_selected)
  #   puts 'please put a number between 1 to 9 and make sure it has not been selected'
  #   option_selected = gets.chomp
  # end
  # update the board
  puts "The board has now been updated, player_2 played at position #{option_selected}"

  # selected_positions.push(option_selected)

  puts 'Display board'

  return puts 'player_2 has won the game' if game_won

  return puts 'The game has ended in draw' if board == valid_options.size

  board += 1

end
