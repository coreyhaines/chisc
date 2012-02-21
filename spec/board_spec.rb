require 'spec_helper'

describe Board do
  describe '.parse' do
    let(:raw_board) { COMPLETE_BOARD.deep_clone }
    
    it 'returns a board' do
      Board.parse(raw_board).should be_a_kind_of Board
    end
  end
end