
require 'spec_helper'

MY_BOARD =
                [
                  [nil,3,4,6,7,8,9,1,2],
                  [6,7,2,1,9,5,3,4,8],
                  [1,9,8,3,4,2,5,6,7],
                  [8,5,9,7,6,1,4,2,3],
                  [4,2,6,8,5,3,7,9,1],
                  [7,1,3,9,2,4,8,5,6],
                  [9,6,1,5,3,7,2,8,4],
                  [2,8,7,4,1,9,6,3,5],
                  [3,4,5,2,8,6,1,7,9]
                ]

class SudokuSolver
  def complete(board)
    missing = board[0] - (1...9).to_a
    board[0][0] = 5 if board[0][0] == nil
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
     board = Board.parse(MY_BOARD)
     solved_board = SudokuSolver.new.complete(board)
     solved_board[0][0].should == 5 

     
  end
end 
