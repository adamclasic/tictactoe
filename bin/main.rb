#!/usr/bin/env ruby

p 'enter name of player 1 or press Enter to skip'
input1 = gets.chomp
input1 == '' ? 'player 1' : input1
p 'enter a letter to play with'
player_1_letter = gets.chomp
p "#{input1} chose #{player_1_letter}"

p 'enter name of player 2 or press Enter to skip'
input2 = gets.chomp
input2 == '' ? 'player 2' : input2
player_2_letter = 'O' if player_1_letter == 'X'
player_2_letter = 'X' if player_1_letter == 'O'
p "#{input2} will be playin with #{player_2_letter}"

sleep(1.5)
puts ''

p 'The game will start ...'

puts ''
sleep(2)
puts ''
puts ''

10.times do |i|
  player = input1 if i.even?
  player = input2 if i.odd?

  p "#{player} enter Horizontal position  with a letter "
  gets.chomp
  p "#{player} enter Vertical position  with a number "
  gets.chomp

  x1 = [%w[x o x], %w[x o x], %w[x o x]]

  p '      1   2   3  '
  p '    -------------'
  p "  A | #{x1[0][0]} | #{x1[0][1]} | #{x1[0][2]} |"
  p '    -------------'
  p "  B | #{x1[1][0]} | #{x1[2][1]} | #{x1[0][2]} |"
  p '    -------------'
  p "  C | #{x1[2][1]} | #{x1[2][1]} | #{x1[2][2]} |"
  p '    -------------'
end
