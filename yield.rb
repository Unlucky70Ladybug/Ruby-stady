def greet
  puts "hello"
  yield
  yield
  puts "happy"
end

greet do
  puts "Stady"
end
