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
