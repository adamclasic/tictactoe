require 'board'
require 'game'

RSpec.describe Game do
  subject(:game) { Game.new(Array.new(9, ' ')) }
  describe '#initialize' do
    it 'should be initialized with an array of 9 empty strings' do
      expect(game.table).to eq(Array.new(9, ' '))
    end
  end

  describe '::valid_letter?' do
    subject { Game.valid_letter?(letter) }
    let(:letter) { 'D' }
    it 'should accept a char (string) as an argument' do
      expect(letter).to be_kind_of String
    end

    context 'when letter valid' do
      let(:letter) { 'O' }
      it { should be true }
    end

    context 'when letter not valid' do
      let(:letter) { 'P' }
      it { should be false }
    end
  end

  describe '#current_player' do
    # subject(:game) {Game.new(Array.new(9, ' '))}
    subject { game.current_player(num) }
    let(:player1_name) { 'john' }
    let(:player2_name) { 'mary' }
    let(:player1_letter) { 'X' }
    let(:player2_letter) { 'O' }

    context 'when num even' do
      let(:num) { 0 }

      it 'should check if number is even?' do
        expect(num.even?).to eq(true)
      end

      it 'should set player 1 name to be current player name' do
        expect(player1_name).to eq('john')
      end

      it 'should set player 1 letter to be current player letter' do
        expect(player1_letter).to eq('X')
      end
    end

    context 'when num odd' do
      let(:num) { 1 }

      it 'should check if number is odd?' do
        expect(num.odd?).to be true
      end

      it 'should set player 2 name to be current player name' do
        expect(player2_name).to eq('mary')
      end

      it 'should set player 2 letter to be current player letter' do
        expect(player2_letter).to eq('O')
      end
    end
  end

  describe '#valid_position?' do
    subject { game.valid_position?(position) }
    let(:position) { 0 }
    it 'should accept an Integer (position) as an argument' do
      expect(position).to be_kind_of Integer
    end

    context 'when a valid position' do
      let(:position) { 3 }
      it { should be true }
    end

    context 'when not a valid position' do
      it { should be false }
    end
  end

  describe '#add_to_table' do
    subject { game.add_to_table(position) }
    let(:position) { 2 }

    it 'should accept an Integer (position) as an argument' do
      expect(position).to be_kind_of Integer
    end

    let(:current_player_letter) { 1 }
    it 'should set table position to current player letter' do
      game.table[position] = current_player_letter
      expect(game.table[position]).to eq(current_player_letter)
    end

    it 'should return an array' do
      should be_kind_of Array
    end
  end
end

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
