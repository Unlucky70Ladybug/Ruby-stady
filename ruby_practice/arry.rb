a = []
a << 1
a << 2
a << 3
puts a

a[5] =100
puts a
puts a[4]

if a[4].nil?
  puts "nilだよ"
end

a.delete_at(2)
puts a
