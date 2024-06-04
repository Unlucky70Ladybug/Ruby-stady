require "minitest/autorun"
require_relative "../lib/effects"
require_relative "../lib/word_synth"

class WordSynthTest < Minitest::Test
  def test_play
    assert WordSynth
    assert Effects
  end
end
