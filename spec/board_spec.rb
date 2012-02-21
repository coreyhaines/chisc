require 'spec_helper'

describe Board do
  let(:raw_board)  { COMPLETE_BOARD.deep_clone }
  specify '.parse returns a new board' do
    Board.parse(raw_board).should be_a_kind_of Board
  end
  
  let(:incremental_board) { (0...81).each_slice(9).to_a }
  it 'grants x,y access to its coordinates' do
    Board.parse(incremental_board)[0, 0].should be_zero
  end
end