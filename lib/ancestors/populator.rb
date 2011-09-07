class Populator
  def initialize
    @row = 0
    @node_count = 0
  end

  def populate root, depth
    @max_depth = depth

    if @max_depth > 0
      add_kids root
    end

    root
  end

  private

  def add_kids relative_root
    if @row < @max_depth
      @node_count += 1
      relative_root.left = Node.new "L" + @node_count.to_s
      @node_count += 1
      relative_root.right = Node.new "R" + @node_count.to_s

      @row += 1
      add_kids relative_root.left
      add_kids relative_root.right
      @row -= 1
    end

    relative_root
  end
end