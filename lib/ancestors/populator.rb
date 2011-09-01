class Populator
  @counter

  def initialize
    @counter = 1
  end

  def populate root
    add_kids root
  end

  private

  def add_kids relative_root
    left = Node.new
    left.name = @counter

    @counter += 1

    right = Node.new
    right.name = @counter

    @counter += 1

    relative_root.left = left
    relative_root.right = right

    if @counter < 10
      add_kids left
      add_kids right
    end
  end
end