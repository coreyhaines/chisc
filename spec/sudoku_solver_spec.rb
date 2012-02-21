require 'spec_helper'
require 'sudoku_solver'

describe SudokuSolver do

  context "complete" do
    it "returns an already completed board" do

      solver = SudokuSolver.new
      board = Board.parse(COMPLETE_BOARD)
      solver.complete(Board.parse(COMPLETE_BOARD)).should == board
    end

  end

  it "can sum a row from a board" do
    solver = SudokuSolver.new
    board = Board.parse ([[1,2,3]])
    solver.complete(board)
    solver.sum_row(0).should == 6
  end

  it "can sum a row from the board" do
        solver = SudokuSolver.new
    board = Board.parse ([[1],[2],[3]])
    solver.complete(board)
    solver.sum_column(0).should == 6

  end

end
