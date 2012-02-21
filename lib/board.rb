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
    @board.map { |row| row[index] }
  end

  def encode
    @board.flatten.join
  end

  def square(index)
    [1, 2, 3, 1, 2, 3, 1, 2, 3]
  end
end
