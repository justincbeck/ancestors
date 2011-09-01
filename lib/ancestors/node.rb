class Node
  attr_accessor :root, :name, :left, :right

  def initialize
    @root = false
    @name = generate_name
  end

  def find names
    a = find_descendant(names[0])
    puts "Found: " + names[0] + ", " + a.to_s
    b = find_descendant(names[1])
    puts "Found: " + names[1] + ", " + b.to_s
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

  def generate_name
    rand(36**8).to_s(36)
  end

end