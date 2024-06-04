hello_proc = Proc.new do
  "hello"
end
puts hello_proc.call
puts

def greet(proc_1, proc_2, proc_3)
  puts proc_1.call("おはよう")
  puts proc_2.call("こんにちは")
  puts proc_3.call("こんばんは")
end

shuffle_proc = Proc.new{|text| text.chars.shuffle.join}
repeat_proc = Proc.new{|text| text * 2}
question_proc = Proc.new{|text| "#{text}?"}
greet(shuffle_proc,repeat_proc,question_proc)

add_lamda = ->(a,b){a.to_i + b.to_i}
#ラムダは引数について厳密なので、引数が丁度２つないとエラーが出る
=begin
例
add_lamda.call(10)
add_lamda.call(10,20,30)
=end
