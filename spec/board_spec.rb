require 'spec_helper'

EMPTY_BOARD = [
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil, nil]
]

EMPTY_BOARD.extend(DeepClone)
describe Board do
  describe '.parse' do
    let(:raw_board) { COMPLETE_BOARD.deep_clone }
    
    it 'returns a board' do
      Board.parse(raw_board).should be_a_kind_of Board
    end


    it "should have all possibilities" do
      Board.parse(EMPTY_BOARD.deep_clone).possibilities(0, 0).should == [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

  end
end
