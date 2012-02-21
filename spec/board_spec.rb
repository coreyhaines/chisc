require 'spec_helper'

class Board
  def self.parse(board)
    Board.new(board)
  end

  def complete?
    false
  end

end
describe Board do

  it "board is incomplete with a nil" do
    board = [1, 2, nil]

    Board.parse(board).complete?.should be_false
  end

  it "is incomplete if there is a repeat" do
    board = [1, 2, 1]

    Board.parse(board).complete?.should be_false
  end
end
