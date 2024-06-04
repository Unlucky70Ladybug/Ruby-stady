require "minitest/autorun"
require_relative "../lib/effects"
require_relative "../lib/word_synth"

class WordSynthTest < Minitest::Test
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal "Ruby is fun!", synth.play("Ruby is fun!")
  end
end
