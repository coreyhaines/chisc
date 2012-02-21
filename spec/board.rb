class Board

  def initialize(board)
    @board = board
  end

  def self.parse(board)
    Board.new(board)
  end

  def complete?
    !@board.any? do |row|
      row.any? do |cell|
        cell.nil?
      end
    end
  end
end
