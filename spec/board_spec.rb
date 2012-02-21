require 'board'

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

    it "finds missing number in a row" do
      board = Board.parse([[nil,2,3,4,5,6,7,8,9]])

      board.missing_values_in_row(0).should == [1]
    end

    it "finds missing number in a column" do
      grid = COMPLETE_BOARD.deep_clone
      grid[0][0] = nil

      board = Board.parse(grid)

      board.missing_values_in_column(0).should == [5]
    end

    it "finds another missing number in a column" do
      grid = COMPLETE_BOARD.deep_clone
      grid[2][5] = nil

      board = Board.parse(grid)

      board.missing_values_in_column(5).should == [2]
    end
  end
end
