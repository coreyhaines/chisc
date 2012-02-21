class Board
  attr_reader :grid
  def self.parse(grid)
    return new(grid)
  end

  def initialize(grid)
    @grid = grid
  end

  def encoded
    return grid.to_s
  end


end

class SudokuSolver
  def solve(board)
    return board
  end
end


