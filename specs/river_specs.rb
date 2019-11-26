require('minitest/autorun')
require('minitest/reporters')
require_relative('../fish')
require_relative('../river')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRiver < MiniTest::Test
  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Bob")
    @fish2 = Fish.new("Anthony")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name())
  end

  def test_river_has_no_fish
    assert_equal(0, @river.fish_count())
  end

  def test_add_fish_to_river
    @river.add_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end

  def test_remove_fish_from_river
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.remove_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end

end
