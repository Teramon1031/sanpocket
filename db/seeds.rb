# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

24.times do |i| 
    Map.create(user_id: 1, s_dis: i+1, status: 0)
end

Station.create(sta_id:1, name:'荻窪-Ogikubo')
Station.create(sta_id:2, name:'南阿佐ヶ谷-Minamiasagaya')
Station.create(sta_id:3, name:'新高円寺-Shinkoenji')
Station.create(sta_id:4, name:'東高円寺-Higashikoenji')
Station.create(sta_id:5, name:'新中野-Shinnakano')
Station.create(sta_id:6, name:'中野坂上-Nakanosakaue')
Station.create(sta_id:7, name:'西新宿-Nishishinjuku')
Station.create(sta_id:8, name:'新宿-Shinjuku')
Station.create(sta_id:9, name:'新宿三丁目-ShinjukuSanchome')
Station.create(sta_id:10, name:'新宿御苑前-ShinjkuGyoenmae')
Station.create(sta_id:11, name:'四谷三丁目-YotsuyaSanchome')
Station.create(sta_id:12, name:'四ツ谷-Yotsuya')
Station.create(sta_id:13, name:'赤坂見附-Akasakamitsuke')
Station.create(sta_id:14, name:'国会議事堂前-Kokkaigijidoumae')
Station.create(sta_id:15, name:'霞ヶ関-Kasumigaseki')
Station.create(sta_id:16, name:'銀座-Ginza')
Station.create(sta_id:17, name:'東京-Tokyo')
Station.create(sta_id:18, name:'大手町-Otemachi')
Station.create(sta_id:19, name:'淡路町-Awajicho')
Station.create(sta_id:20, name:'御茶ノ水-Ochanomizu')
Station.create(sta_id:21, name:'本郷三丁目-HongoSanchome')
Station.create(sta_id:22, name:'後楽園-Korakuen')
Station.create(sta_id:23, name:'茗荷谷-Myogadani')
Station.create(sta_id:24, name:'新大塚-Shinotsuka')
Station.create(sta_id:25, name:'池袋-Ikebukuro')

