require 'spec_helper'
require 'board'

describe Board do
  it "doesn't blow up with one arg parse" do
    expect {
      Board.parse([123])
    }.should_not raise_error
  end
end