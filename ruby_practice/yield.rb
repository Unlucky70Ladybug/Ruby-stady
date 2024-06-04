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
  #「こんにちは」が引数
  text = yield "こんにちは"

  puts text
  puts "こんばんは"
end

def greet
  puts "おはよう"
  text = yield "こんにちは",12345
  puts text
  puts "こんばんは"
end

greet do |text|
  text * 2
end
puts

greet do |text, other|
  text * 2 + other.inspect
end
