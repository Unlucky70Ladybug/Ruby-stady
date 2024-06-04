class User
  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  def name
    puts @name
  end

  def hello
    "Hello, I am #{@name}"
  end
end
user = User.new("Alice")
user.name

names = ["Alice","Bob","Carol"]
users = User.create_users(names)
users.each  do |user|
  puts user.hello
end
users[0].name
users[1].name
users[2].name

class Product
  DEFAULT_PRICE = 0
  attr_reader :name, :price
  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end
product = Product.new("A free move")

puts product.name
puts product.price
