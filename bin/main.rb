#!/usr/bin/env ruby




p 'enter name of player 1'
player_1 = gets.chomp
p "enter letter"
player_1_letter = gets.chomp
p "#{player_1} chose #{player_1_letter}"
p 'enter name of player 2'
player_2 = gets.chomp
p "enter letter"
player_2_letter = "O" if player_1_letter == "X"
player_2_letter = "X" if player_1_letter == "O"
p "#{player_2} will be playin with #{player_2_letter}"



5.times do

    x1 = ['x', 'o', 'x']
     p 'enter a letter: '
     gets.chomp

    
    p "      1   2   3  "    
    p "    -------------"    
    p "  A | #{x1[1]} | #{x1[2]} | #{x1[0]} |"
    p "    -------------"
    p "  B | #{x1[1]} | #{x1[2]} | #{x1[0]} |"
    p "    -------------"
    p "  C | #{x1[1]} | #{x1[2]} | #{x1[0]} |"
    p "    -------------"

end





# p 'enter Player 1 name'
# player_1 = gets.chomp
# p "choose a letter O or X for #{player_1} to play with"
# player_1_letter = gets.chomp


# p 'enter Player 2 name'
# player_2 = gets.chomp
# p "choose a letter O or X for #{player_2} to play with"
# player_2_letter = gets.chomp 



