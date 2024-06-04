begin
  puts 1/0
rescue => e
  puts "エラークラス:#{e.class}"
  puts "エラーメッセージ:#{e.message}"
  puts "----------バックトレース-------------"
  puts e.backtrace
  puts "------------------------------------"
end
puts

begin
  puts "abc".foo
rescue  ZeroDivisionError
  puts "0で割り算しました"
  puts "エラークラス:#{e.class}"
  puts "エラーメッセージ:#{e.message}"
  puts "----------バックトレース-------------"
  puts e.backtrace
  puts "------------------------------------"
rescue  NoMethodError
  puts "存在しないメゾットが呼び込まれました"
  puts "エラークラス:#{e.class}"
  puts "エラーメッセージ:#{e.message}"
  puts "----------バックトレース-------------"
  puts e.backtrace
  puts "------------------------------------"
end

puts
retry_count = 0
begin
  puts "処理を開始します"
  1/0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryします。 #{retry_count}回目"
    retry
  else
    puts "retryに失敗しました。"
  end
end
puts

class NoCountryError < StandardError
  attr_reader :country

  def initialize(message, country)
    @country = country
    super("#{message}, #{country}")
  end
end

def currency_of(country)
  case country
  when :japan
    "yen"
  when :us
    "dollar"
  when :india
    "rupee"
  else
    raise NoCountryError.new("無効な国名です", country)
  end
end

begin
  currency_of(:italy)
rescue NoCountryError => e
  puts e.message
  puts e.country
end
