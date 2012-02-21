
require 'spec_helper'

class SudokuSolver
  def complete(board)
  end
end

class Board 
  def self.parse ary; 
  end
end

describe SudokuSolver do
  it "should be able to parse a board" do
     board = Board.parse(COMPLETE_BOARD)
     solved_board = SudokuSolver.new.complete(board)

     
  end
end 
