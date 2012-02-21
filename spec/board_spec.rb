require 'spec_helper'
require 'board'

describe Board do
  
  it "should parse" do
    lambda { Board.parse( [ ([nil] * 9).flatten] * 9) }.should_not raise_error
  end

  it "should have rows" do 
    board = Board.parse([
      [1, 2, 3, 5, 4, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9]])
    board.should_not be_nil
    board.row(0).should == [1, 2, 3, 5, 4, 6, 7, 8, 9]
    board.row(1).should == [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  it "should have columns" do
    board = Board.parse([
      [1, 2, 3, 5, 4, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9]])
    board.columns(0).should == [1] * 9
    board.columns(1).should == [2] * 9
  end
  
  it "should have squares" do
    board = Board.parse([
      [1, 2, 3, 5, 4, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9]])
    board.square(0).should == [1, 2, 3, 1, 2, 3, 1, 2, 3]
  end

  it "encodes the board" do
    board = Board.new(COMPLETE_BOARD)
    board.encode.should == COMPLETE_BOARD.flatten.join
  end
end
