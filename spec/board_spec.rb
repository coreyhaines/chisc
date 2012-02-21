require 'spec_helper'
require 'board'

describe Board do
  
  it "should parse" do
    lambda { Board.parse(
      [
        [5,3,nil,nil,7,nil,nil,nil,nil],
        [6,nil,nil,1,9,5,nil,nil,nil],
        [nil,9,8,nil,nil,nil,nil,6,nil],
        [8,nil,nil,nil,6,nil,nil,nil,3],
        [4,nil,nil,8,nil,3,nil,nil,1],
        [7,nil,nil,nil,2,nil,nil,nil,6],
        [nil,6,nil,nil,nil,nil,2,8,nil],
        [nil,nil,nil,4,1,9,nil,nil,5],
        [nil,nil,nil,nil,8,nil,nil,7,9]
    ]) }.should_not raise_error
  end
end
