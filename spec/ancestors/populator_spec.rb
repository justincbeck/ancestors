require File.expand_path(File.dirname(__FILE__)) + '/../spec_helper'

describe "populate" do
  # Assuming full and balanced tree
  def measure_depth root, depth = nil
    d = depth.nil? ? 0 : depth += 1
    if !root.left.nil?
      d = measure_depth root.left, d
    end
    d
  end

  before(:each) do
    @root = Node.new "root"
    @populator = Populator.new
  end

  it "should populate to a depth of 0" do
    root = @populator.populate @root, 0
    measure_depth(root).should == 0
  end

  it "should populate to a depth of 1" do
    root = @populator.populate @root, 1
    measure_depth(root).should == 1
  end

  it "should populate to a depth of 2" do
    root = @populator.populate @root, 2
    measure_depth(root).should == 2
  end

  it "should populate to a depth of 3" do
    root = @populator.populate @root, 3
    measure_depth(root).should == 3
  end

  it "should populate to a depth of 4" do
    root = @populator.populate @root, 4
    measure_depth(root).should == 4
  end

  it "should populate to a depth of 14" do
    root = @populator.populate @root, 14
    measure_depth(root).should == 14
  end
end