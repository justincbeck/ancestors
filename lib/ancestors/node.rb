class Node
  attr_accessor :root, :name, :left, :right

  def initialize
    @root = false
  end

  def find names
    a = find_descendant(names[0])
    b = find_descendant(names[1])
    (a and b)
  end

  def find_descendant descendant
    if !@left.nil? and @left.name.eql? descendant
      true
    elsif !@right.nil? and @right.name.eql? descendant
      true
    elsif !@left.nil?
      @left.find_descendant descendant
    elsif !@right.nil?
      @right.find_descendant descendant
    else
      false
    end
  end
end