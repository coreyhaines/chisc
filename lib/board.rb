class Board
  attr_reader :grid
  def self.parse(grid)
    return new(grid)
  end

  def initialize(grid)
    @grid = grid
  end

  def encoded
    grid.join
  end

  def sum_row(index)
    grid[index].inject(0, &:+)
  end
end

class SudokuSolver
  def solve(board)
    return board
  end
end


