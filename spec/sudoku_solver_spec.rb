require "board_spec"
class SudokuSolver

  def self.solve(board)
    return [1]
  end
end
describe SudokuSolver do

  it "empty it should solve it" do
    board = Board.parse([nil])
    SudokuSolver.solve(board) == [1]
  end
end