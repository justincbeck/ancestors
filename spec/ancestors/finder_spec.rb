require File.expand_path(File.dirname(__FILE__)) + '/../spec_helper'

describe "find" do
  before(:each) do
    populator = Populator.new
    @root = Node.new "root"
    populator.populate @root, 5
    @finder = Finder.new
  end

  it "should find the deepest ancestor given two valid descendants" do
    deepest = @finder.find @root, ["L1", "R2"]
    deepest.should.eql? "root"
  end

  it "should find the deepest ancestor if descendants are the same node" do
    deepest = @finder.find @root, ["L1", "L1"]
    deepest.should.eql? "root"
  end

  it "should return nil if one of the two descendants does not exist" do
    deepest = @finder.find @root, ["L1, L2"]
    deepest.should.eql? nil
  end

  it "should return 'root' if the descendants are 'L7' and 'R30'" do
    deepest = @finder.find @root, ["L7", "R30"]
    deepest.should.eql? "root"
  end

  it "should return 'L17' if the descendants are 'L21' and 'R24'" do
    deepest = @finder.find @root, ["L21", "R24"]
    deepest.should.eql? "L17"
  end

  it "should return 'R4' if the descendants are 'R12' and 'R14'" do
    deepest = @finder.find @root, ["R12", "R14"]
    deepest.should.eql? "R4"
  end
end