class Finder
  @deepest

  def find(root, names)
    if root.find names
      @deepest = root
      find root.left, names
      find root.right, names
    end

    @deepest
  end
end