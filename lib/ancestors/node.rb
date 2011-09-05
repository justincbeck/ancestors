class Node
  attr_accessor :name, :left, :right

  def initialize name
    @name = name
  end

  def find names
    a = self.find_descendant(names[0])
    b = self.find_descendant(names[1])
    (a and b)
  end

  protected

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