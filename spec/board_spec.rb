require 'spec_helper'

class Board

  def initialize(board)
    @board = board
  end

  def self.parse(board)
    Board.new(board)
  end

  def complete?
    return false if @board.flatten.any? {|cell| cell.nil?}
    uniques = @board.flatten.uniq
    uniques.size == @board.size
  end

  def first_empty
    [0]
  end

end
describe Board do

  it "board is incomplete with a nil" do
    board = [1, 2, nil]

    Board.parse(board).complete?.should be_false
  end

  it "board is incomplete with a nil in multidimensional" do
      board = [[1, 2, 3], [1,3,nil],[1, 2, 3] ]

      Board.parse(board).complete?.should be_false
    end

  it "is incomplete if there is a repeat" do
    board = [1, 2, 1]

    Board.parse(board).complete?.should be_false
  end

  it "is incomplete if there is a repeat" do
    board = [[1, 2, 3], [1, 5, 6],[7, 8, 9] ]

    Board.parse(board).complete?.should be_false
  end

  it "is complete " do
    board = [1, 2, 3]

    Board.parse(board).complete?.should be_true
  end

  it "gets me the first empty cell" do
    board = [nil, 2, 3]
    Board.parse(board).first_empty.should == [0]
  end

end
