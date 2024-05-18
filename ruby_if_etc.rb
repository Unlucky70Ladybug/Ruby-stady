=begin
nilもFalseと同じ役割をする

=end
n=11
if n>10
    puts "10より大きい"
else
    puts "10以下"
end

country="italy"
if country =="japan"
    puts "こんにちは"
elsif country == "us"
    puts "Hello"
elsif country == "italy"
    puts "Ciao"
else
    puts "???"
end

def greet(country)
    #countryがnilならメッセージを返してメソッドを抜ける
    return "countryを入力してください" if country.nil?
    if country == "japan"
        "こんにちは"
    else
        "hello"
    end
end
puts greet(nil)
puts greet("japan")

str = "hello"
puts "oh,#{str}"
puts "oh, \"#{str}\""
