require File.expand_path(File.dirname(__FILE__)) + '/../spec_helper'

describe "find" do
  before(:each) do
    root = Node.new "root"
    populator = Populator.new
    @root = populator.populate root, 5
  end

  it "should find L1 and R2" do
    @root.find(["L1", "R2"]).should be true
  end

  it "should find L1 and L1" do
    @root.find(["L1", "L1"]).should be true
  end

  it "should not find L1 and L2" do
    @root.find(["L1", "L2"]).should be false
  end

  it "should find L7 and R30" do
    @root.find(["L7", "R30"]).should be true
  end

  it "should find L21 and R24" do
    @root.find(["L21", "R24"]).should be true
  end

  it "should find R12 and R14" do
    @root.find(["R12", "R14"]).should be true
  end
end
