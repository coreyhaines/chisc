class Board
  attr_reader :grid
  def self.parse(grid)
    return new(grid)
  end

  def initialize(grid)
    @grid = grid
  end

  def encoded
    return grid.join('').to_s
  end

  def sum_row(index)
    grid[index].inject(0) do |sum, obj|
      sum += obj
    end
  end
end

class SudokuSolver
  def solve(board)
    return board
  end
  
  def complete(board)
    [1..9].each do |row|
      if board.sum_row(row) != 45
        missing_digit = 45 - board.sum_row(row)
      end
    end
    board.select {|digit| number}
    return board
  end
end


