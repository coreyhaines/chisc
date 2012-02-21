require 'spec_helper'

describe SudokuSolver do
  describe '#complete' do
    let(:board)  { COMPLETE_BOARD.deep_clone }
    let(:solver) { SudokuSolver.new }
    
    it 'takes a board' do
      expect { solver.complete board }.to_not raise_error
    end
  end
end
