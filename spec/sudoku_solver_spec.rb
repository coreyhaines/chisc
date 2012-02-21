require 'spec_helper'

describe SudokuSolver do
  describe '.complete' do
    let(:raw_board) { COMPLETE_BOARD.deep_clone }
    let(:board)     { Board.parse raw_board }
    
    it 'takes a board' do
      expect { SudokuSolver.complete board }.to_not raise_error
    end
  end
end