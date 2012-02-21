class Board
  attr_accessor :board

  def self.parse(board)
    Board.new(board)
  end

  def initialize(board)
    @board = board
  end

  def encode
    @board.flatten.join("")
  end
end
