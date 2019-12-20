# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.create(name:"ライブ運営",venue:"東京ドーム",area:"東京",date:"2019/12/26",start:"7:00",reward:12000,kind:"運営",clothes:"動きやすい服装",content:"某バンド　のライブです。朝早く集合できる方のみエントリーください")
Job.create(name:"アーティストライブ運営",venue:"東京ドーム",area:"東京",date:"2019/12/25",start:"7:00",reward:12000,kind:"運営",clothes:"動きやすい服装",content:"某バンド　のライブです。朝早く集合できる方のみエントリーください")
Job.create(name:"年末ライブ運営",venue:"幕張メッセ",area:"千葉",date:"2019/12/21",start:"10:00",reward:15000,kind:"運営",clothes:"動きやすい服装",content:"某バンド　のライブです。朝早く集合できる方のみエントリーください")
Job.create(name:"年末ライブ運営",venue:"東京武道館",area:"東京",date:"2019/12-22",start:"15:00",reward:14000,kind:"運営",clothes:"動きやすい服装",content:"某バンド　のライブです。朝早く集合できる方のみエントリーください")
Job.create(name:"イベント運営",venue:"イオンモール",area:"千葉",date:"2019/12/22",start:"7:00",reward:12000,kind:"接客",clothes:"動きやすい服装",content:"某バンド　のライブです。朝早く集合できる方のみエントリーください")
Job.create(name:"ライブ運営",venue:"東京ドーム",area:"東京",date:"2019/12/26",start:"7:00",reward:12000,kind:"運営",clothes:"動きやすい服装",content:"某バンド　のライブです。朝早く集合できる方のみエントリーください")
Job.create(name:"アーティストライブ運営",venue:"東京ドーム",area:"東京",date:"2019/12/25",start:"7:00",reward:12000,kind:"運営",clothes:"動きやすい服装",content:"某バンド　のライブです。朝早く集合できる方のみエントリーください")
Job.create(name:"年末ライブ運営",venue:"幕張メッセ",area:"千葉",date:"2019/12/26",start:"10:00",reward:15000,kind:"運営",clothes:"動きやすい服装",content:"某バンド　のライブです。朝早く集合できる方のみエントリーください")
Job.create(name:"ファミリーイベント",venue:"幕張イオンモール",area:"千葉",date:"2019/12-26",start:"15:00",reward:14000,kind:"運営",clothes:"動きやすい服装",content:"ファミリーイベントです。朝早く集合できる方のみエントリーください")
Job.create(name:"イベント運営",venue:"イオンモール",area:"千葉",date:"2019/12/28",start:"7:00",reward:12000,kind:"接客",clothes:"動きやすい服装",content:"某バンド　のライブです。朝早く集合できる方のみエントリーください")

User.create(name:"管理者", password: "passowrd",email: "admin@example.com")

(2..16).each do |user|
    User.create(name:"user#{user}",password:"password",email:"user{user}@example.com")
end