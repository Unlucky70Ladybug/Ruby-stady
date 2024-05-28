require "minitest/autorun"
require_relative "../lib/convert_hash_syntax.rb"

class ConvertHashSyntax < Minitest::Test
  def test_convert_hash_syntax

    old_syntax = <<~TEXT
      {
        :neme => "Alice,
        :age => 20,
        :gender => :female
      }
    TEXT

    expected = <<~TEXT
      {
        neme: "Alice,
        age: 20,
        gender: :female
      }
    TEXT

    actual = convert_hash_syntax(old_syntax)
    assert_equal expected , actual
  end
end
