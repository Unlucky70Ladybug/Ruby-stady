def foo(time = Time.now, message = bar())
  puts "time: #{time}, message:#{message}"
end

def bar()
  "BAR"
end

foo()

#引数の内容を変更しない安全なバージョン
def reverse_upcase(s)
  puts s.reverse.upcase
end
#引数を変更するバージョン
def reverse_upcase!(s)
  s.reverse!
  s.upcase!
  puts s
end

s="ruby"
reverse_upcase(s)
reverse_upcase!(s)
