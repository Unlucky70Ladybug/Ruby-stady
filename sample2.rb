name="Alice"
a=<<"TEXT"
ようこそ、#{name}さん。
以下のメッセージをご覧ください。
TEXT
puts a
a=<<"TEXT"
ようこそ、#{name}さん。/n先日はありがとうございました。
以下のメッセージをご覧ください。
TEXT

def ok?(status)
  unless status == "ok"
    "何か異常があります"
  else
    "正常です"
  end
end
puts ok?("良いですか？")

def where(country)
  case
  when country == "japan"
    "こんにちは"
  when country =="us"
    "hello"
  else
    "????"
  end
end
puts where("us")
