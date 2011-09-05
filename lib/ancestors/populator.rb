class Populator
  @counter

  def initialize
    @row = 0
    @node_count = 0
  end

  def populate root
    add_kids root
  end

  private

  def add_kids relative_root
    @node_count += 1

    left = Node.new
    left.name = "L" + @node_count.to_s

    @node_count += 1

    right = Node.new
    right.name = "R" + @node_count.to_s

    relative_root.left = left
    relative_root.right = right

    if @row < 3
      @row += 1
      add_kids left
      add_kids right
      @row -= 1
    end

    relative_root
  end
end