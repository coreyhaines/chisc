class SudokuSolver
  def initialize
  end
  
  def complete(board)
    Board.new
  end
end

class Board
  def self.parse(raw_board)
    Board.new
  end
  
  def [](x,y)
    0
  end
  
end
