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
  end

  def test_bear_has_name
    bear = Bear.new(@name, @type)
    assert_equal("Yogi",bear.name())
  end

  def test_bear_has_type
    bear = Bear.new(@name, @type)
    assert_equal("Grizzly", bear.type())
  end

  def test_bear_has_empty_stomach
    bear = Bear.new(@name, @type)
    assert_equal(0, bear.stomach_contents(bear))
  end

end
