class Board
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def self.parse(board)
    Board.new(board)
  end

  def encode
    @board.flatten.join("")
  end
end
