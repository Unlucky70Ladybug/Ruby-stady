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
