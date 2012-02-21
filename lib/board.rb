class Board

  def initialize(board)
    @board = board
  end

  def self.parse(raw_board)
    self.new(raw_board)
  end

  def row(index)
    @board[index]
  end

  def columns(index)
    [1,1,1,1,1,1,1,1,1]
  end
end

