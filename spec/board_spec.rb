require 'spec_helper'

describe Board do
  describe '.parse' do
    let(:raw_board) { COMPLETE_BOARD.deep_clone }
    
    it 'returns a board' do
      Board.parse(raw_board).should be_a_kind_of Board
    end

    it "should have possibilities" do
      Board.parse(([nil] *9) * 9).possibilities(0,0).should == [1,2,3,4,5,6,7,8,9]
    end

    it "should eliminate possibilities from the same row" do
      Board.parse([
                  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil, nil, nil],
                  [nil, nil, nil, nil, nil, nil, nil, nil, nil]
      ]).possibilities(0, 0).should == [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

  end
end
