module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digtis)
      @digtis = digtis
    end
  end
end

module Baseball2
  class Second
    def file_with_nesting
      puts File
    end
  end
end

class Baseball2::Second
  def file_without_nesting
    puts File
  end
end

second = Baseball::Second.new("Alice", 13)
clock = Clock::Second.new(13)

second = Baseball2::Second.new
second.file_with_nesting
second.file_without_nesting

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
  module_function :log
end

class Product
  include Loggable
  def title
    log("title is called.\nA great movie")
  end
end
Loggable.log("hello")
product = Product.new
product.title
