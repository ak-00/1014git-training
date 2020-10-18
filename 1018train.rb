# テキスト教材　条件分岐課題

puts <<~TEXT
旅行プランを選択して下さい
1. 沖縄旅行（¥10,000）
2. 北海道旅行（¥20,000）
3. 九州旅行（¥15,000)
TEXT

plan = gets.to_i
puts "選択プラン>>#{plan}"

if plan == 1
   destination = "沖縄"
   price = 10000
elsif plan == 2
   destination = "北海道"
   price = 20000
elsif plan == 3
   destination = "九州"
   price = 15000
end 

puts "#{destination}旅行ですね、何人でいきますか？"
number = gets.to_i
puts "人数を入力>>#{number}"

total_price = price * number
# ５人以上で１０％オフ
discount_rate = 0.9

if number >= 5
  puts "5人以上なので10％割引となります"
  puts "合計料金：#{(total_price * discount_rate).to_i}円"
else
  puts "合計金額：#{total_price}円"
end


 
 