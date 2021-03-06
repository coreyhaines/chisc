require 'board'
require 'spec_helper'

describe Board do
  describe ".parse" do
    it "returns an instance of Board" do
      Board.parse([]).should be_a Board
    end

    it "sudokusolver can take a board" do
      board = Board.parse([])
      solver = SudokuSolver.new
      solved = solver.solve(board)
      solved.should be_a Board
    end

    it "encoded returns a string" do
      board = Board.parse([])
      board.encoded.should be_a String
    end

    it "returns a board with a usable grid" do
      board = Board.parse([])
      board.grid.should == []
    end

    it "encoded returns a string representation of grid" do
      board = Board.parse([1, 2, 3])
      board.encoded.should == "123"
    end

    it "encodes an array of arrays" do
      board = Board.parse(
        [
          [1,2,3],
          [4,5,6]
      ])
      board.encoded.should == "123456"
    end

    it "sums one row" do
      board = Board.parse([(1..9).to_a])
      board.sum_row(0).should == 45
    end
    
    it "returns the sum of a row with one nil value" do
      new_board = COMPLETE_BOARD.deep_clone
      n = rand(9)
      new_board[0][n] = nil
      board.sum_row(0).should == 45 - n
    end

  end
end
