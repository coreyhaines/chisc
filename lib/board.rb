class Board

  def self.parse(board)
    self.new(board)
  end

  def initialize(board)
    @board = board
  end

  def encoded
    @board.flatten.join("")
  end

  def row(index)
    @board[index]
  end

  alias :[] :row

end
