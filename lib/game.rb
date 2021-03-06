require_relative './board.rb'

class Game
  attr_writer :player1_name, :player2_name, :player1_letter, :player2_letter
  attr_accessor :current_player_letter, :current_player_name, :table

  def initialize(arr)
    @table = arr
  end

  def self.valid_letter?(letter)
    %w[X O].include?(letter)
  end

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

  def draw?
    Board.draw?(@table)
  end

  def valid_position?(position)
    position != 0 && @table[position - 1] == ' '
  end

  def add_to_table(position)
    @table[position - 1] = @current_player_letter
    @table
  end
end
