# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Delete all"
Category.delete_all
MyRecord.delete_all
Column.delete_all
Exer.delete_all
User.delete_all

users = []
categories = []
my_records = []
columns = []
exers = []

puts "Star seed..."

cates = [
  {type: 0, name: "Morning", img: "items/item_1.svg"},
  {type: 1, name: "Lunch", img: "items/item_2.svg"},
  {type: 2, name: "Dinner", img: "items/item_3.svg"},
  {type: 3, name: "Snack", img: "items/item_4.svg"},
]

10.times do |i|
  encrypted_password = User.new({ password: '123456a@' }).encrypted_password
  users.push({
    email: "user_#{i+1}@gmail.com",
    encrypted_password: encrypted_password,
    created_at: Time.now,
    updated_at: Time.now
  })
end
puts "Create user"
User.insert_all!(users)

100.times do |i|
  a = cates.shuffle.first
  categories.push({
    is_type: a[:type],
    title: a[:name],
    img: a[:img],
    created_at: Time.now,
    updated_at: Time.now
  })
end

puts "Create cates"
Category.insert_all!(categories)

100.times do |i|
  user_id = User.all.shuffle.first.id
  my_records.push({
    user_id: user_id,
    title: "#{rand(1..100)}. 私の日記の記録が一部表示されます。",
    description: "テキストテキストテキストテキストテキストテキストテキストテ...",
    created_at: Time.now,
    updated_at: Time.now
  })
end

puts "Create my record"
MyRecord.insert_all!(my_records)

100.times do |i|
  columns.push({
    title: "#{rand(1..99)}. 魚を食べて頭もカラダも元気に！知っておきたい魚を食べるメリ…",
    description: "#魚を食べ, #頭もカ, #DHA",
    img: "items/column-#{rand(1..8)}.svg",
    created_at: Time.now,
    updated_at: Time.now
  })
end

puts "Create my record"
Column.insert_all!(columns)

1000.times do |i|
  user_id = User.all.shuffle.first.id
  exers.push({
    user_id: user_id,
    is_type: rand(0..1),
    title: "#{rand(1..100)}. 家事全般（立位・軽い）",
    number: rand(20..30),
    created_at: Time.now,
    updated_at: Time.now
  })
end

puts "Create MY EXERCISE"
Exer.insert_all!(exers)

puts 'End seed!...'

