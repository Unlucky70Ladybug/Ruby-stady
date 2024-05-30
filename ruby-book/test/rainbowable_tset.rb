require "minitest/autorun"
require_relative "../lib/rainbowable"

class Rainbowable < Minitest :Test
  def test_rainbowable
    assert Rainbowable
  end
end
