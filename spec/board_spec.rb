require 'spec_helper'
require 'board'

describe Board do
  it 'parses a two dimensional array' do
    board = Board.new
    board.parse(COMPLETE_BOARD)
  end
end
