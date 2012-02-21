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

    it "return a board" do
      Board.parse(EMPTY_BOARD).board.should == EMPTY_BOARD
    end

    it "should eliminate possibilities in the same row" do
      board = EMPTY_BOARD.deep_clone
      board[0][8] = 1
      Board.parse(board).possibilities(0, 0).should == [2, 3, 4, 5, 6, 7, 8, 9]
    end

    it "should eliminate possibilities in the same column" do
      board = EMPTY_BOARD.deep_clone
      board[7][0] = 1
      Board.parse(board).possibilities(0, 0).should == [2, 3, 4, 5, 6, 7, 8, 9]
    end
  end
end
