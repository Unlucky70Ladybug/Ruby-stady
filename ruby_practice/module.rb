module Loggable

  private
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable

  def title
    log("title is called.\nA great movie")
  end
end

class User
  include Loggable
  def name
    log("title is called.\nAlice")
  end
end

product = Product.new
puts product.title

user = User.new
puts user.name

class Teampo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end
  def <=>(other)
    other.is_a?(Teampo) ? bpm <=> other.bpm : nill
  end

  def inspect
    "#{bpm}bpm"
  end
end

t_120 = Teampo.new(120)
t_180 = Teampo.new(180)

puts t_120 > t_180
puts t_120 <= t_180
puts t_120 == t_180
