require 'spec_helper'

describe SudokuSolver do
  describe '#complete' do
    let(:raw_board)  { COMPLETE_BOARD.deep_clone }
    let(:board)      { Board.parse raw_board }
    let(:solver)     { SudokuSolver.new }
    
    it 'takes a board' do
      expect { solver.complete board }.to_not raise_error
    end
    
    it 'returns a different board' do
      result = solver.complete(board)
      result.should be_a_kind_of Board
      result.should_not equal board
    end
    
    it 'returns a complete board'
  end
end
