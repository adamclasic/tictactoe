#!/usr/bin/env ruby


 def get_player_info
    p 'enter name of player 1'
	player_1 = gets.chomp
	p "enter letter"
	player_1_letter = gets.chomp
	p "#{player_1} chose #{player_1_letter}"
	 p 'enter name of player 2'
	player_2 = gets.chomp
	p "enter letter"
	player_2_letter = gets.chomp
	p "#{player_2} chose #{player_2_letter}"
end



# get_player_info




def get_player_num(num)
    p "enter Player #{num} name"
    player = gets.chomp
end



player_1 = get_player_info(1)



p "choose a letter O or X for #{player_1} to play with"
player_1_letter = gets.chomp

player_2 = get_player_info(2)











# p 'enter Player 1 name'
# player_1 = gets.chomp
# p "choose a letter O or X for #{player_1} to play with"
# player_1_letter = gets.chomp


# p 'enter Player 2 name'
# player_2 = gets.chomp
# p "choose a letter O or X for #{player_2} to play with"
# player_2_letter = gets.chomp 



# x1 = ['x', 'o', 'x']

# p "      1   2   3  "    
# p "    -------------"    
# p "  A | #{x1[1]} | #{x1[2]} | #{x1[0]} |"
# p "    -------------"
# p "  B | #{x1[1]} | #{x1[2]} | #{x1[0]} |"
# p "    -------------"
# p "  C | #{x1[1]} | #{x1[2]} | #{x1[0]} |"
# p "    -------------"
