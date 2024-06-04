def greet0
  puts "hello"
  if block_given?
    yield
  end
  puts "happy"
end
greet0
puts

greet0 do
  puts "Stady"
end
puts

def greet
  puts "おはよう"
  text = yield "こんにちは"

  puts text
  puts "こんばんは"
end

greet do |text|
  text * 2
end
