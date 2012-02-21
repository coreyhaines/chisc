
require 'spec_helper'

class SudokuSolver
  def complete(board)
    board
  end
end

class Board 
  def self.parse(ary)
    ary
  end
end

describe SudokuSolver do
  it "should be able to parse a board" do
     board = Board.parse(COMPLETE_BOARD)
     solved_board = SudokuSolver.new.complete(board)
     solved_board[1][1].should == board[1][1]

     
  end
end 
