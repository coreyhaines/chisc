require 'spec_helper'

describe Board do
  let(:raw_board)  { COMPLETE_BOARD.deep_clone }
  specify '.parse returns a new board' do
    Board.parse(raw_board).should be_a_kind_of Board
  end
end