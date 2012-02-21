class Board
  attr_reader :board
  def self.parse(raw_board)
    new(raw_board)
  end
  
  def initialize(board)
    @board = board
  end
  
  def possibilities(row, column)
    [1,2,3,4,5,6,7,8,9]
  end
end


