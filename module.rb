module Loggable
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
