#!/usr/bin/env ruby
require_relative './tictactoe.rb'

puts
puts 'Welcome to **Tic-Tac-toe**'
Tictactoe.print_table_empty
puts "In this game, there are only two letters to play with 'X' and 'O'. Whichever player gets the first similar letters in an entire row, column or diagonal WINS!!!."
puts
puts "At the begining of the game, player 1 will choose either 'X' or 'O' and the other letter will be assigned to player 2 automatically."
puts

puts 'Enter name of player 1 or press Enter to skip'
input1 = gets.chomp
input1 == '' ? input1 = 'player 1' : input1

puts 'enter a letter to play with'
player_1_letter = gets.chomp.upcase
until %w[X O].include?(player_1_letter)
  puts 'enter a valid letter to play with'
  letter = gets.chomp.upcase
  player_1_letter = letter if Tictactoe.valid_letter?(letter)
end

puts "#{input1} chose #{player_1_letter}"

puts 'Enter name of player 2 or press Enter to skip'
input2 = gets.chomp
input2 == '' ? input2 = 'player 2' : input2
player_2_letter = 'O' if player_1_letter == 'X'
player_2_letter = 'X' if player_1_letter == 'O'
puts "#{input2} will be playin with #{player_2_letter}"

puts ''

puts 'The game will start ...'

puts ''

game_on = true

game = Tictactoe.new([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])

Tictactoe.draw_table

i = 0
while game_on
  player_letter = player_1_letter if i.even?
  player_name = input1 if i.even?
  player_letter = player_2_letter if i.odd?
  player_name = input2 if i.odd?

  puts "#{player_name} enter a position from 1 to 9 "
  location = gets.chomp.to_i - 1
  valid = game.valid_entry?(location)
  unless valid
    until valid
      puts "Error, input invalid. #{player_name} Please re enter"
      location = gets.chomp.to_i - 1
      valid = game.valid_entry?(location)
    end
  end

  table = game.add_to_table(player_letter, location)

  puts '      1   2   3  '
  puts '    -------------'
  puts "  1 | #{table[0]} | #{table[1]} | #{table[2]} | 3"
  puts '    -------------'
  puts "  4 | #{table[3]} | #{table[4]} | #{table[5]} | 6"
  puts '    -------------'
  puts "  7 | #{table[6]} | #{table[7]} | #{table[8]} | 9"
  puts '    -------------'
  puts '      7   8   9  '

  winner = Code.winner?(table, player_letter)

  if winner
    puts "#{player_name} has won the game!"
    game_on = false
  end

  draw = Code.draw?(table)
  if draw && !winner
    puts 'this is a Draw'
    game_on = false
  end
  i += 1
end
