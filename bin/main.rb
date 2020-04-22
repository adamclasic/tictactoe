#!/usr/bin/env ruby

# user instructions
puts 'Welcome to **Tic-Tac-toe**'
puts 'In this game whichever player gets the first similar letters in a row, column or diagonal Wins!.'
puts "There are only two letters to pick from 'X' and 'O'."
puts 'At the begining of the game, each player will choose which letter they will be playing with,'
puts 'once one player has selected a letter, the otherone is assigned the other letter automatically.'
puts "Note: Player names are optional (just press 'Enter' to continue)"
puts ''
puts ''

# Get user input and set it to a variable
p 'Enter name of player 1 or press Enter to skip'
input1 = gets.chomp
input1 == '' ? 'player 1' : input1
p 'enter a letter to play with'
player_1_letter = gets.chomp
p "#{input1} chose #{player_1_letter}"

p 'Enter name of player 2 or press Enter to skip'
input2 = gets.chomp
input2 == '' ? 'player 2' : input2
player_2_letter = 'O' if player_1_letter == 'X'
player_2_letter = 'X' if player_1_letter == 'O'
p "#{input2} will be playin with #{player_2_letter}"

puts ''

p 'The game will start ...'

puts ''

game_on = true

player = input1 # if i.even?
# player = input2 if i.odd?

while game_on # Loop for each move

  p "#{player} enter Horizontal position  with a letter "
  gets.chomp
  p "#{player} enter Vertical position  with a number "
  gets.chomp

  valid = true
  unless valid # checks if input from user is valid
    puts "Error, input invalid. Please enter 'X' or 'O'"
    next
  end

  x1 = [%w[x o x], %w[x o x], %w[x o x]]

  p '      1   2   3  '
  p '    -------------'
  p "  A | #{x1[0][0]} | #{x1[0][1]} | #{x1[0][2]} |"
  p '    -------------'
  p "  B | #{x1[1][0]} | #{x1[2][1]} | #{x1[0][2]} |"
  p '    -------------'
  p "  C | #{x1[2][1]} | #{x1[2][1]} | #{x1[2][2]} |"
  p '    -------------'

  draw = false
  if draw # Condition for when game is draw
    puts 'this is a Draw'
    game_on = false
  end

  winner = true
  game_on = false if winner # terminates when we have a winner

end
