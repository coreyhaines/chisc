

require 'spec_helper.rb'

class SudokoSolver
  def initialize(board)
  end
end

describe SudokoSolver do
  it "does something" do

     board = Board.new(COMPLETEBOARD)

     SudokoSolver.new(COMPLETEBOARD)
  end
end
