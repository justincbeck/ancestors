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
    right = Node.new

    relative_root.left = left
    relative_root.right = right

    if @counter < 3
      @counter += 1
      add_kids left
      add_kids right
    end

    relative_root
  end
end