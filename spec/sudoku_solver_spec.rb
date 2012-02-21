
require 'spec_helper.rb'

class SudokuSolver; end

class Board 
  def parse ary; 
  end
end

describe SudokuSolver do
  it "should be able to parse a board" do
     Board.new.parse([])
  end
end 
