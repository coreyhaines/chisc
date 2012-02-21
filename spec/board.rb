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

  def first_complete_row
    @board.find { |row| row.all? }
  end

  def first_complete_column
    @board.transpose.find { |row| row.all? }
  end
end
