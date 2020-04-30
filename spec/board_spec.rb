require 'board'


RSpec.describe Board do
  describe '::winner?' do
    context 'when there is a winner' do
      let(:table) { ['X', ' ', ' ', 'X', ' ', ' ', 'X', ' ', ' '] }
      let(:current_player_letter) { 'X' }
      it 'should return true' do
        expect(Board.winner?(table, current_player_letter)).to eq(true)
      end
    end

    context 'when there is no winner' do
      let(:table) { ['X', ' ', ' ', 'O', ' ', ' ', 'X', ' ', ' '] }
      let(:current_player_letter) { 'X' }
      it 'should return false' do
        expect(Board.winner?(table, current_player_letter)).to eq(false)
      end
    end
  end

  describe '::draw?' do
    context 'when all positions are played' do
      let(:table) { %w[X O X X O X X X X] }
      it 'should return true' do
        expect(Board.draw?(table)).to eq(true)
      end
    end

    context 'when all positions not played' do
      let(:table) { ['X', 'O', ' ', 'X', 'O', 'X', 'X', 'X', 'X'] }
      it 'should return false' do
        expect(Board.draw?(table)).to eq(false)
      end
    end
  end
end
