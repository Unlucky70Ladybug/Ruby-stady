class Product
  attr_reader :name, :price

  def initialize(name,price)
    @name = name
    @price = price
  end
end

class DVD < Product
  #nameとpriceはスーパークラスでattr_readerが設定されているので定義不要
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

end

product = Product.new("A great movie", 1000)
puts product.name
puts product.price
puts

dvd = DVD.new("A great DVD", 1000, 120)
puts dvd.name
puts dvd.price
puts dvd.running_time

class Foo
  def self.hello
    puts "hello!!"
  end
end

class Bar < Foo
end
Foo.hello
Bar.hello
