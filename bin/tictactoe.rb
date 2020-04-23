require_relative './code.rb'
class Tictactoe
    # def table
    #     @table = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    # end

    def initialize(player1, player2, arr)
        @player1 = player1
        @player2 = player2
        @table = arr
    end

    def self.valid_letter?(letter)
        return true if letter == 'O' || letter == 'X'
    end

    def valid_entry?(location)
        if @table[location] == ' '
            return true
        else
            return false
        end
    end

    def add_to_table(player, position)
        if valid_entry?(position)
            @table[position] = player
            @table
        else
            raise 'invalid entry can not add player to the requested position'
        end
    end
    # attr_reader :table 

end

# game = Tictactoe.new('x', 'o')
# p game.table
# p game.valid_entry?(1)
# p game.add_to_table('x', 0)
# p game.add_to_table('x', 3)
# p game.add_to_table('o', 7)
