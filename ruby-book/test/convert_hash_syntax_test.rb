require "minitest/autorun"
require_relative "../lib/convert_hash_syntax.rb"

class ConvertHashSyntax < Minitest::Test
  def test_convert_hash_syntax
    assert_equal "{}", convert_hash_syntax("{}")
  end
end
