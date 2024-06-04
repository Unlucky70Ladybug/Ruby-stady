text = "私の誕生日は1997年の7月17日です"
#"年の"を"年"にするとマッチしない 不明
m = /(?<year>\d+)年の(?<month>\d+)月(?<day>\d+)日/.match(text)
pp m[:year]
pp m[:month]
pp m[:day]

text =~ /(?<year>\d+)年の(?<month>\d+)月(?<day>\d+)日/
puts $~
puts $&
puts $1

text.gsub(/(\d+)年の(\d+)月(\d+)日/) do
  puts "#{$1}-#{$2}-#{$3}"
end
