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

    it "encoded returns a stirng" do
      board = Board.parse([])
      board.encoded.should be_a String
    end
  end
end
