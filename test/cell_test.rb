require 'test_helper'

class CellTest < MiniTest::Unit::TestCase

  # def setup
  #   @cell = Cell.new
  # end

  def test_create_cell
    @cell = Cell.new(0,1)

    assert_respond_to @cell, :x
    assert_respond_to @cell, :y
    assert_respond_to @cell, :alive
    assert_equal 0, @cell.x
    assert_equal 1, @cell.y
    assert_equal false, @cell.alive
  end

  def test_cell_state_toggle_make_alive
    @cell = Cell.new(0,1)
    @cell.toggle

    assert_equal true, @cell.alive
  end

  def test_cell_state_toggle_kill
    @cell = Cell.new(0,1)
    @cell.toggle
    @cell.toggle

    assert_equal false, @cell.alive
  end

  def test_is_neighbor_true
    cell1 = Cell.new(0,1)
    cell2 = Cell.new(1,1)

    assert_equal true, cell1.neighbor?(cell2)
  end

  def test_is_neighbor_false
    cell1 = Cell.new(0,1)
    cell3 = Cell.new(0,3)

    assert_equal false, cell1.neighbor?(cell3)
  end

  def test_is_alive_false
    cell = Cell.new(0,1)

    assert_equal false, cell.alive?
  end

  def test_is_alive_false
    cell = Cell.new(0,1)
    cell.toggle

    assert_equal true, cell.alive?
  end



end
