require_relative './board.rb'

class Game
  def initialize(arr)
    @table = arr
  end

  def self.valid_letter?(letter)
    return true if %w[X O].include?(letter)
  end

  def valid_entry?(location)
    return true if @table[location] == ' '

    false
  end

  attr_accessor :player1_name, :player2_name, :player1_letter, :player2_letter

  def current_player(num)
    if num.even?
      @current_player_name = @player1_name
      @current_player_letter = @player1_letter
    else
      @current_player_name = @player2_name
      @current_player_letter = @player2_letter
    end
  end

  def winner?
    Board.winner?(@table, @current_player_letter)
  end

  def no_winner?
    Board.draw?(@table)
  end

  def valid_position?
    puts "#{@current_player_name} enter a position from 1 to 9 "
    location = gets.chomp.to_i - 1
    valid = valid_entry?(location)
    unless valid
      until valid
        puts "Error, input invalid. #{@current_player_name} Please re enter"
        location = gets.chomp.to_i - 1
        valid = valid_entry?(location)
      end
    end
    @location = location
  end

  def add_to_table
    @table[@location] = @current_player_letter
    @table
  end
  attr_reader :current_player_letter, :current_player_name, :table
end
