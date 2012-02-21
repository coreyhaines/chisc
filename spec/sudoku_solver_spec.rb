require 'spec_helper'
require 'sudoku_solver'
require 'board'

describe SudokuSolver do
  it "completes an already complete board" do
    starting_board = Board.new(COMPLETE_BOARD)
    solver = SudokuSolver.new
    solved_board = solver.complete(starting_board)
    solved_board.encode.should == starting_board.encode
  end
end
