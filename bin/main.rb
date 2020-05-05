# puts 'Hello world!'

valid_choices = []
game_won = false
board = 1
last_attempt = nil

puts 'Player 1, please enter your name:'
p1 = gets.chomp.upcase

puts 'Player 2, Please enter your name'
p2 = gets.chomp.upcase

while !game_won && board <= 9
  if last_attempt == p1
    puts "#{p2.capitalize}, please make a choice"
    a = gets.chomp
    puts 'You have made your move'
    valid_choices.push(a.to_i)
    last_attempt = p2
    # a = nil
  else
    puts "#{p1.capitalize}, please make a choice"
    last_attempt = p1
    a = gets.chomp
    puts 'You have made your move'
    valid_choices.push(a.to_i)
    # a = nil
  end
  board += 1

  # if cond_check()
  #     game_won = true
  # else
  #     next

end
