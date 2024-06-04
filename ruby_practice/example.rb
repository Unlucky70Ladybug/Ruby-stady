numbers = [1,2,3,4,5]
loop do
  n = numbers.sample
  puts n
=begin
  if n ==5
    break
  end
=end
  break if n ==5
end

fruits = ["apple", "melon", "orange"]
numbers = [4,5,6]
fruits.each do |fruit|
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    break if n == 4
  end
end
