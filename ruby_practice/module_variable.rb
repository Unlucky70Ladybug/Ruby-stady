module AwesomeApi
  attr_accessor :base_url, :debug_mode

  @base_url = "https://base/url.com"
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

class ModuleUes
  attr_reader :name, :age
  include AwesomeApi

  def initialize(name, age = 20)
    @name = name
    @age = age
  end

  def cahge_age(age)
    @age = age
  end

  def puts_base_url
    AwesomeApi.base_url
  end

  def update_base_url(new_url)
    AwesomeApi.base_url = new_url
  end
end

test1 = ModuleUes.new("Alice")
puts test1.name
puts test1.age
test1.cahge_age(100)
puts test1.age
puts test1.puts_base_url
puts test1.update_base_url("https://new/url.com")
puts test1.puts_base_url
=begin
クラスインスタンス変数@base_urlは、モジュール自体のクラスインスタンス変数です。
これが更新されると、モジュールをインクルードしているすべてのクラスでその変更が反映されます。
=end

puts "-------------------------------------------------"
puts AwesomeApi.base_url

puts "-------------------------------------------------"
#設定値を保存
AwesomeApi.base_url = "https://example.com"
AwesomeApi.debug_mode = true
#設定値を参照
puts AwesomeApi.base_url
puts AwesomeApi.debug_mode
