require('minitest/autorun')
require('minitest/reporters')
require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Boris")
  end

  def test_fish_has_name
    fish = @fish1
    assert_equal("Boris", fish.name())
  end

end
