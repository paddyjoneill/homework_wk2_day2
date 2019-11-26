require('minitest/autorun')
require('minitest/reporters')
require_relative('../fish')
require_relative('../bear')
require_relative('../river')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBear < MiniTest::Test
  def setup
    @name = "Yogi"
    @type = "Grizzly"
    @bear = Bear.new(@name, @type)
    @fish1 = Fish.new("Kevin")
    @fish2 = Fish.new("David")
    @river = River.new("Amazon")
  end

  def test_bear_has_name
    assert_equal("Yogi",@bear.name())
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type())
  end

  def test_bear_has_empty_stomach
    assert_equal(0, @bear.stomach_contents)
  end

  def test_river_has_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.fish_count)
  end

  def test_bear_takes_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @bear.eat_fish(@river, @fish1)

    assert_equal(1, @bear.stomach_contents)
    assert_equal(1, @river.fish_count)
  end

  def test_bear_can_roar
    assert_equal("Roar", @bear.roar())
  end

  def test_food_count
    assert_equal(0, @bear.food_count)
  end

  def test_bear_eats_two_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @bear.eat_fish(@river, @fish1)
    @bear.eat_fish(@river, @fish2)
    assert_equal(2, @bear.food_count)

  end

end
