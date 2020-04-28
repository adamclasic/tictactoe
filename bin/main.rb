#!/usr/bin/env ruby
require_relative '../lib/game.rb'

puts
puts 'Welcome to **Tic-Tac-toe**'
puts '      1   2   3  '
puts '    -------------'
puts '  1 | X | O | X | 3'
puts '    -------------'
puts '  4 | O | X | O | 6'
puts '    -------------'
puts '  7 | X | O | X | 9'
puts '    -------------'
puts '      7   8   9  '
puts "In this game, there are only two letters to play with 'X' and 'O'. Whichever player gets the first similar letters in an entire row, column or diagonal WINS!!!."
puts
puts "At the begining of the game, player 1 will choose either 'X' or 'O' and the other letter will be assigned to player 2 automatically."
puts
game = Game.new(Array.new(9, ' '))

puts 'Enter name of player 1 or press Enter to skip'
input1 = gets.chomp
input1 == '' ? input1 = 'player 1' : input1
puts 'enter a letter to play with'
player_1_letter = gets.chomp.upcase
until %w[X O].include?(player_1_letter)
  puts 'enter a valid letter to play with'
  letter = gets.chomp.upcase
  player_1_letter = letter if Game.valid_letter?(letter)
end

game.player1_name = input1
game.player1_letter = player_1_letter

puts "#{input1} chose #{player_1_letter}"

puts 'Enter name of player 2 or press Enter to skip'
input2 = gets.chomp
input2 == '' ? input2 = 'player 2' : input2
player_2_letter = 'O' if player_1_letter == 'X'
player_2_letter = 'X' if player_1_letter == 'O'
puts "#{input2} will be playin with #{player_2_letter}"

puts ''

game.player2_name = input2
game.player2_letter = player_2_letter

puts 'The game will start ...'

puts ''

game_on = true

puts '      1   2   3  '
puts '    -------------'
puts '  1 |   |   |   | 3'
puts '    -------------'
puts '  4 |   |   |   | 6'
puts '    -------------'
puts '  7 |   |   |   | 9'
puts '    -------------'
puts '      7   8   9  '

i = 0
while game_on
  game.current_player(i)
  puts "#{game.current_player_name} enter a position from 1 to 9 "
  position = gets.chomp
  until game.valid_position?(position)
    puts "Error, input invalid. #{game.current_player_name} Please re enter"
    position = gets.chomp
  end

  table = game.add_to_table(position.to_i)

  puts '      1   2   3  '
  puts '    -------------'
  puts "  1 | #{table[0]} | #{table[1]} | #{table[2]} | 3"
  puts '    -------------'
  puts "  4 | #{table[3]} | #{table[4]} | #{table[5]} | 6"
  puts '    -------------'
  puts "  7 | #{table[6]} | #{table[7]} | #{table[8]} | 9"
  puts '    -------------'
  puts '      7   8   9  '

  winner = game.winner?

  if winner
    puts "#{game.current_player_name} has won the game!"
    game_on = false
  end

  draw = game.no_winner?
  if draw && !winner
    puts 'this is a Draw'
    game_on = false
  end
  i += 1
end
