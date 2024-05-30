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

second = Baseball::Second.new("Alice", 13)
clock = Clock::Second.new(13)
