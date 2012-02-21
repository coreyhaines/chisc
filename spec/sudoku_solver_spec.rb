require 'spec_helper'

describe SudokuSolver do
  it "completes an already complete board" do
    starting_board = COMPLETE_BOARD
    solver = SudokuSolver.new
    solved_board = solver.complete(COMPLETE_BOARD)
    solved_board.encode.should == COMPLETE_BOARD.flatten.join("")
  end
end
