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
end
