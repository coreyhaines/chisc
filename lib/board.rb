class Board
  attr_reader :grid
  def self.parse(grid)
    return new(grid)
  end

  def initialize(grid)
    @grid = grid
  end

  def encoded
    return grid.flatten.join.to_s
  end

  def sum_row(index)
    grid[index].inject(0) do |sum, obj|
      sum += obj
    end
  end

  def missing_values_in_row(index)
    (1..9).to_a - @grid[index]
  end

  def missing_values_in_column(index)
    (1..9).to_a - @grid.map{|row| row[index]}
  end
end

class SudokuSolver
  def solve(board)
    return board
  end
end


