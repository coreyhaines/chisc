class SudokuSolver
  def complete(board)
    @board = board
    board
  end


  def sum_row(index)
    @board[index].inject(0){|sum,x| sum += x}
  end

  def sum_column(index)
    @board.columns(index).inject(0){|sum,x| sum += x}
  end

end
