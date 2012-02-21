require 'spec_helper'
require 'board'

describe Board do
  it 'parses a two dimensional array' do
    board = Board.parse(COMPLETE_BOARD)
  end

  it 'encodes the board' do
    board = Board.parse(COMPLETE_BOARD)
    board.encode.should == COMPLETE_BOARD.flatten.join("")
  end
end
