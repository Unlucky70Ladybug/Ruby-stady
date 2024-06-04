def greet
  puts "hello"
  if block_given?
    yield
  end
  puts "happy"
end
greet

greet do
  puts "Stady"
end
