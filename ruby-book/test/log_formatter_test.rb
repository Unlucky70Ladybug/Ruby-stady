require "minitest/autorun"
require_relative "../lib/log_formatter"

class LogFomatterTest < Minitest::Test
  def test_format_log
    LogFomatter.format_log
  end
end
