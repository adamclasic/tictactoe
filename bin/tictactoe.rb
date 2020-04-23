require_relative './code.rb'
class Tictactoe
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

  def add_to_table(player, position)
    # unless valid_entry?(position) raise 'invalid entry can not add player to the requested position'
    @table[position] = player
    @table
  end

  def self.print_table_empty
    puts '      1   2   3  '
    puts '    -------------'
    puts '  1 | X | O | X | 3'
    puts '    -------------'
    puts '  4 | O | X | O | 6'
    puts '    -------------'
    puts '  7 | X | O | X | 9'
    puts '    -------------'
    puts '      7   8   9  '
  end

  def self.draw_table
    puts '      1   2   3  '
    puts '    -------------'
    puts '  1 |   |   |   | 3'
    puts '    -------------'
    puts '  4 |   |   |   | 6'
    puts '    -------------'
    puts '  7 |   |   |   | 9'
    puts '    -------------'
    puts '      7   8   9  '
  end
end
