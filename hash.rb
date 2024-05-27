currencies = {"japan" => 'yen', "us" => "dollar", "india" => "rupee"}

currencies["italy"] = "euro"
puts currencies
puts

currencies.each do |key, value|
  puts "#{key}:#{value}"
end
puts

currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key}:#{value}"
end
puts

person = {
  name: "Alice",
  age: 20,
  friends:["Bob", "Carol"],
  phones:{home:"1234-0000",mobile:"5678-0000"}
}
puts person[:age]
puts person[:friends]
puts person[:phones][:mobile]
puts

a = :test
puts a.class
puts

h = {test: :mono}
if h.has_key?(:test)
  puts "yes, #{h[:test]}"
else
  puts "no"
end

h = Hash.new{"hello"}
puts h
a = h[:foo]
a = h[:foo2]

puts a


str = "Alice"
puts person[:name] == str
