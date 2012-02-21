require "board"

describe Board do

  it "is an incomplete board if any cell is nil" do
    board = Board.parse([
                [5,3,nil,nil,7,nil,nil,nil,nil],
                [6,nil,nil,1,9,5,nil,nil,nil],
                [nil,9,8,nil,nil,nil,nil,6,nil],
                [8,nil,nil,nil,6,nil,nil,nil,3],
                [4,nil,nil,8,nil,3,nil,nil,1],
                [7,nil,nil,nil,2,nil,nil,nil,6],
                [nil,6,nil,nil,nil,nil,2,8,nil],
                [nil,nil,nil,4,1,9,nil,nil,5],
                [nil,nil,nil,nil,8,nil,nil,7,9]
            ])

    board.complete?.should be_false
  end

  it "has a complete board" do
    board = Board.parse([
                      [5,3,4,6,7,8,9,1,2],
                      [6,7,2,1,9,5,3,4,8],
                      [1,9,8,3,4,2,5,6,7],
                      [8,5,9,7,6,1,4,2,3],
                      [4,2,6,8,5,3,7,9,1],
                      [7,1,3,9,2,4,8,5,6],
                      [9,6,1,5,3,7,2,8,4],
                      [2,8,7,4,1,9,6,3,5],
                      [3,4,5,2,8,6,1,7,9]
                    ])
    board.complete?.should be_true
  end

end
