class Finder
  @root
  @deepest

  def initialize root
    @root = root
    @deepest
  end

  def find(root = nil, names)
    root = @root unless !root.nil?
    if root.find names
      @deepest = root
      find root.left, names
      find root.right, names
    end

    @deepest
  end
end