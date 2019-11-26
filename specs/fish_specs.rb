require('minitest/autorun')
require('minitest/reporters')
require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFish < MiniTest::Test

  def setup
    @name = "Boris"
  end

  def test_fish_has_name
    fish = Fish.new(@name)
    assert_equal("Boris", fish.name())
  end

end
