class SudokuSolver
  def complete(board)
    @board = board
    board
  end


  def sum_row(index)
    @board[index].inject(0){|sum,x| sum += x}
  end

  def sum_column(index)
    sum(@board.columns(index))
  end

  private

  def sum(collection)
    collection.inject(0) {|sum, x| sum += x }
  end

end
