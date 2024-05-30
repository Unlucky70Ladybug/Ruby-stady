module Rainbowable
  def rainbow
    str = self.to_s
    count = 0
    colored_chars = []

    str.each_chae do |char|
      color = 31 + count % 6
      colored_chars << "\e[#{color}m#{char}"
      count +=1
    end
    ret = colored_chars.join
    ret + "\e[0m]"
  end

  puts "Hello, world!".rainbow
  puts [1,2,3].rainbow
end
