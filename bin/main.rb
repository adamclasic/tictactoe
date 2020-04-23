#!/usr/bin/env ruby
require_relative './tictactoe.rb'

puts 'Welcome to **Tic-Tac-toe**'
puts 'In this game whichever player gets the first similar letters in a row, column or diagonal Wins!.'
puts "There are only two letters to pick from 'X' and 'O'."
puts 'At the begining of the game, each player will choose which letter they will be playing with,'
puts 'once one player has selected a letter, the otherone is assigned the other letter automatically.'
puts "Note: Player names are optional (just press 'Enter' to continue)"
puts ''
puts ''

p 'Enter name of player 1 or press Enter to skip'
input1 = gets.chomp
input1 == '' ? input1 = 'player 1' : input1

p 'enter a letter to play with'
player_1_letter = gets.chomp.upcase
unless player_1_letter == 'X' || player_1_letter == 'O' 
  puts 'enter a valid letter to play with'
  until player_1_letter == 'X' || player_1_letter == 'O'
    letter = gets.chomp.upcase
    if Tictactoe.valid_letter?(letter)
      player_1_letter = letter
    else
      puts 'enter a valid letter to play with'
    end
  end
end

p "#{input1} chose #{player_1_letter}"

p 'Enter name of player 2 or press Enter to skip'
input2 = gets.chomp
input2 == '' ? input2 = 'player 2' : input2
player_2_letter = 'O' if player_1_letter == 'X'
player_2_letter = 'X' if player_1_letter == 'O'
p "#{input2} will be playin with #{player_2_letter}"

puts ''

p 'The game will start ...'

puts ''

game_on = true

game = Tictactoe.new(player_1_letter, player_2_letter, [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
p '======='
p game
p '======='
i = 0
while game_on 
  player_letter = player_1_letter if i.even?
  player_name = input1 if i.even?
  player_letter = player_2_letter if i.odd?
  player_name = input2 if i.odd?
  
  
  
  p "#{player_name} enter a position from 1 to 9 "
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
  
  p '      1   2   3  '
  p '    -------------'
  p "  1 | #{table[0]} | #{table[1]} | #{table[2]} |"
  p '    -------------'
  p "  4 | #{table[3]} | #{table[4]} | #{table[5]} |"
  p '    -------------'
  p "  7 | #{table[6]} | #{table[7]} | #{table[8]} |"
  p '    -------------'
  
  
  winner = Code.is_winner(table, player_letter)
  
  if winner
    puts "#{player_name} has won the game!"
    game_on = false
  end
  
  draw = Code.draw?(table)
  if draw 
    puts 'this is a Draw'
    game_on = false
  end
  i += 1
end
