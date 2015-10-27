# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shop.create(name: "pastadeka", image_path: "/assets/oshare_store.jpg", \
    address: "福岡県福岡市博多区博多駅中央街１－１", tel: "0120-123-456", \
    abstract: "概要", store_hours: "12:00 ~ 18:00", category: "指輪, スマホケース", \
    situation: "present")

Shop.create(name: "spicaterible", image_path: "/assets/oshare_store.jpg", \
    address: "福岡県福岡市", tel: "0120-888-888", \
    abstract: "スピカ概要", store_hours: "10:00 ~ 20:00", category: "指輪, ピアス, 腕時計, バッグ", \
    situation: "present, birthday")

Shop.create(name: "パックマン", image_path: "/assets/oshare_store.jpg", \
    address: "福岡県宗像市", tel: "0120-4444-4444", \
    abstract: "概要パックマン", store_hours: "12:00 ~ 24:00", category: "ネクタイ, 腕時計, 指輪", \
    situation: "birthday")

Shop.create(name: "マ・マー・マー", image_path: "/assets/oshare_store.jpg", \
    address: "福岡県遠賀郡岡垣町野間２丁目１６−１１", tel: "0880-5296-1111", \
    abstract: "概要パスタ", store_hours: "6:00 ~ 18:00", category: "スマホケース, 指輪, ネックレス", \
    situation: "wedding, birthday")

Shop.create(name: "パラサイト・イヴ二ング", image_path: "/assets/oshare_store.jpg", \
    address: "福岡県和白", tel: "0120-202-2222", \
    abstract: "概要触手", store_hours: "20:00 ~ 3:00", category: "化粧品, 財布, 定期入れ, 名刺入れ, ポーチ", \
    situation: "present")
