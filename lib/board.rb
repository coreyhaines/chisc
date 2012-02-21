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
    columns = []
    @board.each do |row|
      columns << row[index]
    end
    columns
  end

  def encode
    @board.flatten.join
  end
end
