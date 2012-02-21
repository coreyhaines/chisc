require 'spec_helper'
require 'sudoku_solver'

describe SudokuSolver do

  context "complete" do
    it "returns an already completed board" do

      solver = SudokuSolver.new
      solver.complete(COMPLETE_BOARD).should == COMPLETE_BOARD
    end

  end

end
