require 'spec_helper'
require 'sudoku_solver'

describe SudokuSolver
  it "responds to complete"
    solver = SudokuSolver.new
    solver.complete(Board.parse(COMPLETE_BOARD)).should == COMPLETE_BOARD
  end
end
