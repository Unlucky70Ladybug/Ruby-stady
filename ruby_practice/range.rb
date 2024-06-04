range = 1..5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)
puts

range = 1...5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)
puts

puts (1..5).include?(2)
puts

def liquid?(tem)
  0 <= tem && tem < 100
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)
puts

def liquid2?(tem)
  (0...100).include?(tem)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

puts (1..5).to_a

jp = ["japan","日本"]
country ="日本"
case country
when *jp
  puts "こんにちは"
end
puts

def greet(*name)
  puts "#{name.join("と")}、こんにちは"
end
greet("佐藤")
greet("佐藤","山田","鈴木")
puts

a = Array.new(10){|n| n % 3 + 1}
puts a

a = Array.new(5, "default")
a[1] = "easy"
puts a

fruits = ["apple", "orange", "melon"]
fruits.each_with_index{|fruit, i| puts "#{i}:#{fruit}"}
