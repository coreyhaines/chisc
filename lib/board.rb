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

  def columns(index)
    @board.map do |row|
      row[0]
    end
  end

  alias :[] :row

  def ==(other)
    encoded == other.encoded
  end

  def missing_elements(row, column)
    (1..9).to_a - @board[row]
  end

end
