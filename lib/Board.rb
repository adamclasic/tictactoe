require_relative './Game.rb'
class Board
  def self.winner?(arr, player)
    return true if [
      [arr[0], arr[1], arr[2]].all?(player),
      [arr[3], arr[4], arr[5]].all?(player),
      [arr[6], arr[7], arr[8]].all?(player),

      [arr[0], arr[3], arr[6]].all?(player),
      [arr[1], arr[4], arr[7]].all?(player),
      [arr[2], arr[5], arr[8]].all?(player),

      [arr[0], arr[4], arr[8]].all?(player),
      [arr[6], arr[4], arr[2]].all?(player)
    ].any?

    false
  end
  
  # def all_equal(subarray, player_symbol)
  #   return true if subarray.uniq.size == 1 && subarray.uniq == player_symbol
  # end

  # def self.check_win(table, player_symbol)
  #   # for rows
  #   all_equal(table[0..2], player_symbol) ||
  #   all_equal(table[3..5], player_symbol) ||
  #   all_equal(table[6..8], player_symbol)
  #   false
  #   # and analogical as above for columns and diagonals
  # end

  def self.draw?(arr)
    return false if arr.include?(' ')

    true
  end


end
