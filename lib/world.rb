class World

  attr_accessor :time, :width, :height, :cells

  def initialize(width=6, height=6)
    @time = 0
    @width = width
    @height = height
    @cells = []
    width.times.map do |y|
      height.times.map do |x|
        @cells << Cell.new(x, y)
      end
    end
  end

  def elapsed
    @time += 1
    @cells = @next_gen
  end

  def update
    # gets each cell's living neighbor count
    # checks the rules
    # if it is alive and will die, or dead and will live, cell.toggle
    # @next_gen << cell
  end
end
