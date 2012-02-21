class Board
  attr_reader :board
  def self.parse(raw_board)
    new(raw_board)
  end
  
  def initialize(board)
    @board = board
  end
  
  def possibilities(row, column)
    possible = [1,2,3,4,5,6,7,8,9]
    board[row].each do |num|
      possible.delete(num)
    end
    possible
  end
end


