class Board

  def initialize(board)
    @board = board
  end
  def self.parse(board)

    return Board.new(board)
  end

  def complete?
    @board.each do |row|
      row.each do |cell|
        return false if cell.nil?
      end
    end

  end
end