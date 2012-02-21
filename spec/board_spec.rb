require 'spec_helper'
require 'board'

describe Board do
  it "doesn't blow up with one arg parse" do
    expect {
      Board.parse([123])
    }.should_not raise_error
  end

  it "parses the board" do
    Board.parse(COMPLETE_BOARD).should == COMPLETE_BOARD
  end
end
