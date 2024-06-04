require_relative "string_shuffle"

#puts "Alice".shuffleここではまだshuffleは使えない
using StringShuffle
puts "Alice".shuffle
class User
  using StringShuffle
  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user =User.new("Alice")
puts user.shuffled_name
puts "Takakura".shuffle
