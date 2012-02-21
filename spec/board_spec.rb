require 'spec_helper'
require 'board'

describe Board do

  it "doesn't blow up with one arg parse" do
    expect {
      Board.parse([123])
    }.should_not raise_error
  end

  it "parses the board" do
    board = Board.parse(COMPLETE_BOARD)
    board.encoded.should == COMPLETE_BOARD.flatten.join("")
  end

  it "gives you the row" do
    board = Board.parse(COMPLETE_BOARD)
    board.row(0).should == COMPLETE_BOARD[0]
  end

  it "gives you a column" do
    board = Board.parse(COMPLETE_BOARD)
    board.columns(0).should == COMPLETE_BOARD.map do |row|
      row[0]
    end
  end

  it "gives you no missing elements from a row and column" do
    board = Board.parse(COMPLETE_BOARD)
    board.missing_elements(0, 0).should == []
  end

  it "gives [5] for missing elements at 0, 0" do
    grid = COMPLETE_BOARD.deep_clone
    grid[0][0] = nil
    board = Board.parse(grid)
    board.missing_elements(0, 0).should == [5]
  end


end
