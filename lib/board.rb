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
end

