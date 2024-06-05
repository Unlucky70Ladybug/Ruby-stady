require "minitest/autorun"
require_relative "../lib/log_formatter"

class LogFomatterTest < Minitest::Test
  def test_format_log
    test = LogFomatter.format_log
    lines = text.lines(chomp: true)
    assert_equal "[OK] request_id=1, path=/products/1", lines[0]
  end
end
