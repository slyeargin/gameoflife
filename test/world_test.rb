require 'test_helper'

class WorldTest < MiniTest::Unit::TestCase

  def setup
    @world = World.new
  end

  def test_world_setup
    assert_equal 0, @world.time
    assert_equal 6, @world.width
    assert_equal 6, @world.height
  end

  def test_world_time_passes
    assert_equal 0, @world.time
    @world.elapsed
    assert_equal 1, @world.time
  end

  def test_world_populates
    assert_equal 36, @world.cells.size
    assert_equal 5, @world.cells[35].x
    assert_equal 5, @world.cells[35].y
    assert_equal false, @world.cells[35].alive
  end



end
