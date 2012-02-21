class SudokuSolver
  def complete(board)
    @board = board
    board
  end


  def sum_row(index)
    @board[index].inject(0){|sum,x| sum += x}
  end
end
