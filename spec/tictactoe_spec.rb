require 'board'
require 'game'

RSpec.describe Board do
	describe '::winner?' do
		it 'should accept an array and a player letter as arguments' do
			expect { Board.winner?([1,2,3], 'x') }.to_not raise_exception	
		end

		context 'when there is a winner' do
			xit 'should be true' do
				
			end
		end

		context 'when there is no winner' do
			xit 'should not be true' do
				
			end
		end
	end

	describe '::draw?' do
		it 'should accept an array as an argument' do
			expect { Board.draw?([1,2,3]) }.to_not raise_exception	
		end

		context 'when array has no empty strings' do
			xit 'should return true' do
				
			end
		end

		context 'when array includes empty string(s)' do
			xit 'should return false' do
				
			end
		end
	end
end


RSpec.describe Game do
	
end