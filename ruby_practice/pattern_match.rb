alice = "Alice"
bob = "Bob"
name = "Bob"

case name
in ^alice
  puts "Aliceさん。こんにちは"
in ^bob
  puts "Bobさん。さようなら"
end
puts

case {name: "Alice", age: 20, gender: :female}
in {name:, age:}
  puts "name =#{name}, age = #{age}"
end
puts

case {name: "Alice", age: 20, gender: :female}
in {name: String => my_name, age: 19.. => my_age}
  puts "name =#{my_name}, age = #{my_age}"
end
puts

case[2002, 6, "B"]
in [_, _] | [_, _, _]
  puts "match!!"
end
