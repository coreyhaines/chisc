require 'spec_helper'

class Board
  def self.parse(board)
    board
  end
end
describe Board do
  it "returns board" do
    board = [1, 2, 3]

    Board.parse(board).should == board
  end
end
