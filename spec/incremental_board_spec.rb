require 'spec_helper'
require 'sudoku_solver'
require 'board'
describe "Complete Puzzle Specs" do
  context "solving incremental boards" do
    context "single digit row missing boards" do
      it "solves if only one missing digit" do
        starting_board = COMPLETE_BOARD.deep_clone

        starting_board[rand(9)][rand(9)] = nil

        solver = SudokuSolver.new
        solved_board = solver.complete(Board.parse(starting_board))
        solved_board.encoded.should == COMPLETE_BOARD.flatten.join("")
      end

      it "solves if two missing digits" do
        starting_board = COMPLETE_BOARD.deep_clone

        starting_board[4][8] = nil
        starting_board[1][3] = nil

        solver = SudokuSolver.new
        solved_board = solver.complete(Board.parse(starting_board))
        solved_board.encoded.should == COMPLETE_BOARD.flatten.join("")
      end

      it "solves if three missing digits" do
        starting_board = COMPLETE_BOARD.deep_clone

        starting_board[4][8] = nil
        starting_board[1][3] = nil
        starting_board[8][1] = nil

        solver = SudokuSolver.new
        solved_board = solver.complete(Board.parse(starting_board))
        solved_board.encoded.should == COMPLETE_BOARD.flatten.join("")
      end

      it "solves if two missing digits in same column" do
        starting_board = COMPLETE_BOARD.deep_clone

        starting_board[4][8] = nil
        starting_board[1][8] = nil

        solver = SudokuSolver.new
        solved_board = solver.complete(Board.parse(starting_board))
        solved_board.encoded.should == COMPLETE_BOARD.flatten.join("")
      end

      it "solves if two missings digits in same row" do
        starting_board = COMPLETE_BOARD.deep_clone

        starting_board[1][5] = nil
        starting_board[1][8] = nil

        solver = SudokuSolver.new
        solved_board = solver.complete(Board.parse(starting_board))
        solved_board.encoded.should == COMPLETE_BOARD.flatten.join("")
      end

      it "solves if missing digits in same row/columns, different squares" do
        starting_board = COMPLETE_BOARD.deep_clone

        starting_board[1][1] = nil
        starting_board[1][7] = nil
        starting_board[7][1] = nil
        starting_board[7][7] = nil
        starting_board[1][4] = nil
        starting_board[7][4] = nil

        solver = SudokuSolver.new
        solved_board = solver.complete(Board.parse(starting_board))
        solved_board.encoded.should == COMPLETE_BOARD.flatten.join("")
      end
    end
  end
end
