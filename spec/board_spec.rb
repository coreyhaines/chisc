require 'board'

describe Board do
  describe ".parse" do
    it "returns an instance of Board" do
      Board.parse([]).should be_a Board
    end
  end
end
