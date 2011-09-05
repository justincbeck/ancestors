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
    found = false

    if !@left.nil? and @left.name.eql? descendant
      found = true
    elsif !@right.nil? and @right.name.eql? descendant
      found = true
    end

    if !found and !@left.nil?
      found = @left.find_descendant descendant
    end
    if !found and !@right.nil?
      found = @right.find_descendant descendant
    end

    found
  end
end