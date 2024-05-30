module AwesomeApi
  attr_accessor :base_url, :debug_mode

  @base_url = ""
  @debug_mode = false
  class << self
    #本来はこの一文のみでよろしい attr_accessor :base_url, :debug_mode
    def base_url=(value)
      @base_url = value
    end

    def base_url
      @base_url
    end

    def debug_mode=(value)
      @debug_mode = value
    end

    def debug_mode
      @debug_mode
    end
  end
end

#設定値を保存
AwesomeApi.base_url = "https://example.com"
AwesomeApi.debug_mode = true
#設定値を参照
puts AwesomeApi.base_url
puts AwesomeApi.debug_mode
