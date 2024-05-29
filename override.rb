class Product
  attr_reader :name, :price

  def initialize(name,price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  #nameとpriceはスーパークラスでattr_readerが設定されているので定義不要
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "#{super}, ruuning_time: #{running_time}"
    #ここのsuperはProductクラスのto_sを使っている
  end
end

product = Product.new("A great movie", 1000)
puts product.name
puts product.price
puts product.to_s
puts

dvd = DVD.new("A great DVD", 2500, 120)
puts dvd.name
puts dvd.price
puts dvd.running_time
puts dvd.to_s
