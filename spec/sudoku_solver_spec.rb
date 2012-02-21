
require 'spec_helper'

class SudokuSolver
end

class Board 
  def self.parse ary; 
  end
end

describe SudokuSolver do
  it "should be able to parse a board" do
     Board.parse(COMPLETE_BOARD)
     
  end
end 
