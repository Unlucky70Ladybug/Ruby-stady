require "minitest/autorun"
require_relative "../lib/effects"
require_relative "../lib/word_synth"

class WordSynthTest < Minitest::Test
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal "Ruby is fun!", synth.play("Ruby is fun!")
  end

  def test_play_with_effects
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal "ybuR si !nuf", synth.play("Ruby is fun!")
  end
end
