class Cell

  attr_accessor :alive, :x, :y

  def initialize(x, y)
    @x = x
    @y = y
    @alive = false
  end

  def toggle
    @alive = !@alive
  end

  def neighbor?(other_cell)
    x = self.x
    y = self.y
    other_x = other_cell.x
    other_y = other_cell.y

    return Math.sqrt((x-other_x)**2 + (y-other_y)**2).floor == 1
  end

  alias alive? alive

end
