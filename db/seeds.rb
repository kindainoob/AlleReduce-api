# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(r_name:"鶴亀製麺", address:"大阪府大阪市中央区難波千日前１１−６", genre:"うどん")
Restaurant.create(r_name:"ハッピーバーガー", address:"大阪府東大阪市菱屋西一丁目24-26", genre:"ハンバーガー")
Restaurant.create(r_name:"僕らのピラメキ", address:"大阪府東大阪市小若江３丁目４−１", genre:"ラーメン")
Restaurant.create(r_name:"甘味本舗", address:"大阪府大阪市阿倍野区阿倍野筋１丁目１−４３", genre:"スイーツ")
Restaurant.create(r_name:"餃子の桂馬", address:"大阪府大阪市天王寺区勝山４−１１−１", genre:"中華料理")
Restaurant.create(r_name:"なや寿司", address:"大阪府大阪市浪速区恵美須東１丁目１８−６", genre:"寿司")
Restaurant.create(r_name:"心さい橋", address:"大阪府大阪市北区中之島１丁目３−２０", genre:"お好み焼き")
Restaurant.create(r_name:"アルベロベッロ", address:"大阪府大阪市中央区難波５丁目1番60号", genre:"イタリアン")
Restaurant.create(r_name:"ガーガーバード", address:"大阪府大阪市北区大深町４号２０番", genre:"焼き鳥")
Restaurant.create(r_name:"Soco壱", address:"奈良県生駒市乙田町１２４８−１", genre:"カレーライス")

Menu.create(m_name:"ざるうどん", price:350, allergy:"flour", restaurant_id:1)
Menu.create(m_name:"えびの天ぷら", price:100, allergy:"flour,shrimp", restaurant_id:1)

Menu.create(m_name:"チーズバーガー", price:150, allergy:"flour,milk", restaurant_id:2)
Menu.create(m_name:"ナゲット", price:250, allergy:"flour", restaurant_id:2)
Menu.create(m_name:"シェイク", price:100, allergy:"milk", restaurant_id:2)

Menu.create(m_name:"豚骨ラーメン", price:700, allergy:"flour,egg", restaurant_id:3)
Menu.create(m_name:"餃子", price:300, allergy:"flour,milk", restaurant_id:3)
Menu.create(m_name:"唐揚げ", price:300, allergy:"flour,milk,egg", restaurant_id:3)

Menu.create(m_name:"パンケーキ", price:450, allergy:"flour,milk,egg", restaurant_id:4)
Menu.create(m_name:"ぜんざい", price:280, allergy:"flour", restaurant_id:4)

Menu.create(m_name:"麻婆豆腐", price:450, allergy:"flour,milk", restaurant_id:5)
Menu.create(m_name:"棒々鶏", price:450, allergy:"flour,egg", restaurant_id:5)

Menu.create(m_name:"たまご", price:100, allergy:"egg", restaurant_id:6)
Menu.create(m_name:"たこの唐揚げ", price:300, allergy:"flour,milk,egg", restaurant_id:6)
Menu.create(m_name:"しょうゆ", price:0, allergy:"flour", restaurant_id:6)

Menu.create(m_name:"豚玉", price:600, allergy:"flour,milk,egg", restaurant_id:7)
Menu.create(m_name:"もんじゃ焼き", price:450, allergy:"flour", restaurant_id:7)
Menu.create(m_name:"豚トロ", price:500, allergy:"egg", restaurant_id:7)

Menu.create(m_name:"かにクリームパスタ", price:950, allergy:"flour,milk,crab", restaurant_id:8)
Menu.create(m_name:"マルゲリータ", price:600, allergy:"flour,milk", restaurant_id:8)
Menu.create(m_name:"ティラミス", price:300, allergy:"flour,milk,egg", restaurant_id:8)

Menu.create(m_name:"むね肉(たれ)", price:110, allergy:"flour", restaurant_id:9)
Menu.create(m_name:"チキン南蛮", price:300, allergy:"flour,milk,egg", restaurant_id:9)
Menu.create(m_name:"キャベツ", price:250, allergy:"flour", restaurant_id:9)

Menu.create(m_name:"カレーライス", price:450, allergy:"flour", restaurant_id:10)
Menu.create(m_name:"マンゴーラッシー", price:250, allergy:"milk", restaurant_id:10)
Menu.create(m_name:"ナン", price:500, allergy:"flour", restaurant_id:10 )

User.create(u_name:"test1", password_digest:"test", sex:"男性", age:"30代", allergy:"milk,flour,shrimp")
User.create(u_name:"test2", password_digest:"test", sex:"男性", age:"30代", allergy:"flour,soba,peanuts")
User.create(u_name:"test3", password_digest:"test", sex:"男性", age:"30代", allergy:"egg,milk,crab")
User.create(u_name:"test4", password_digest:"test", sex:"男性", age:"30代", allergy:"milk")
