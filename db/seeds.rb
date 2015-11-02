# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shop.create(name: "pastadeka", image_path: "/assets/store/store1.jpg", \
    address: "福岡県福岡市博多区博多駅中央街１－１", tel: "0120-123-456", \
    abstract: "概要", store_hours: "12:00 ~ 18:00", category: "指輪, スマホケース, 名刺入れ, ピアス", \
    situation: "present")

Shop.create(name: "spicaterible", image_path: "/assets/store/store2.jpg", \
    address: "福岡県福岡市東区高美台２丁目８−１", tel: "0120-888-888", \
    abstract: "スピカ概要", store_hours: "10:00 ~ 20:00", category: "指輪, ピアス, 腕時計, バッグ, ブレスレット", \
    situation: "present, birthday")

Shop.create(name: "パックマン", image_path: "/assets/store/store3.jpg", \
    address: "福岡県福岡市東区和白５丁目４−２８", tel: "0120-4444-4444", \
    abstract: "概要パックマン", store_hours: "12:00 ~ 24:00", category: "ネクタイ, 腕時計, 指輪, バッグ", \
    situation: "birthday")

Shop.create(name: "マ・マー・マー", image_path: "/assets/store/store4.jpg", \
    address: "福岡県遠賀郡岡垣町野間２丁目１６−１１", tel: "0880-5296-1111", \
    abstract: "概要パスタ", store_hours: "6:00 ~ 18:00", category: "スマホケース, 指輪, ネックレス, ボールペン", \
    situation: "wedding, birthday")

Shop.create(name: "パラサイト・イヴ二ング", image_path: "/assets/store/store5.jpg", \
    address: " 福岡県福岡市和白３丁目１９−８", tel: "0120-202-2222", \
    abstract: "概要触手", store_hours: "20:00 ~ 3:00", category: "財布, 定期入れ, 名刺入れ, ポーチ", \
    situation: "present")

Shop.create(name: "ED", image_path: "/assets/store/store6.jpg", \
    address: "福岡県福岡市博多区住吉３丁目１−５１", tel: "0120-123-456", \
    abstract: "概要", store_hours: "12:00 ~ 18:00", category: "指輪, スマホケース, ネクタイ, ボールペン, ブレスレット", \
    situation: "present")

Shop.create(name: "OP", image_path: "/assets/store/store7.jpg", \
    address: "福岡県福岡市博多区下川端町２−１", tel: "0120-888-888", \
    abstract: "スピカ概要", store_hours: "10:00 ~ 20:00", category: "指輪, ピアス, 腕時計, バッグ, キーケース", \
    situation: "present, birthday")

Shop.create(name: "パルケルスス", image_path: "/assets/store/store8.jpg", \
    address: "福岡県福岡市東区上和白１３１８−１", tel: "0120-4444-4444", \
    abstract: "概要パックマン", store_hours: "12:00 ~ 24:00", category: "ネクタイ, 腕時計, 指輪, 定期入れ, 名刺入れ, バッグ", \
    situation: "birthday")

Shop.create(name: "パニックTV", image_path: "/assets/store/store9.jpg", \
    address: "福岡県福岡市東区唐原３丁目１７−１", tel: "0880-5296-1111", \
    abstract: "概要パスタ", store_hours: "6:00 ~ 18:00", category: "スマホケース, 指輪, ネックレス, 腕時計, ブレスレット", \
    situation: "wedding, birthday")

Shop.create(name: "栗永戸", image_path: "/assets/store/store10.jpg", \
    address: "福岡県宗像市くりえいと２丁目１−１", tel: "0120-202-2222", \
    abstract: "概要触手", store_hours: "20:00 ~ 3:00", category: "財布, 名刺入れ, ポーチ, ピアス", \
    situation: "present")

Shop.create(name: "パーマネントスコップ", image_path: "/assets/store/store11.jpg", \
    address: "福岡県宗像市、田久２丁目１−１", tel: "0120-123-456", \
    abstract: "概要", store_hours: "12:00 ~ 18:00", category: "スマホケース, 名刺入れ, 腕時計, バッグ", \
    situation: "present")

Shop.create(name: "kaminari", image_path: "/assets/store/store12.jpg", \
    address: "福岡県宗像市田島２３３１", tel: "0120-888-888", \
    abstract: "スピカ概要", store_hours: "10:00 ~ 20:00", category: "指輪, ピアス, 腕時計, バッグ, ボールペン, ブレスレット", \
    situation: "present, birthday")

Shop.create(name: "伝説の傭兵", image_path: "/assets/store/store13.jpg", \
    address: "福岡県福岡市中央区南公園１−１", tel: "0120-4444-4444", \
    abstract: "待たせたな", store_hours: "12:00 ~ 24:00", category: "ネクタイ, 腕時計, 指輪, ピアス, バッグ, ポーチ", \
    situation: "birthday")

Shop.create(name: "ぺろちゃん", image_path: "/assets/store/store14.jpg", \
    address: "福岡県春日市昇町７−６５", tel: "0880-5296-1111", \
    abstract: "概要パスタ", store_hours: "6:00 ~ 18:00", category: "スマホケース, 指輪, ネックレス, ポーチ, ボールペン", \
    situation: "wedding, birthday")

Shop.create(name: "パケットマンストー", image_path: "/assets/store/store15.jpg", \
    address: "福岡県福岡市、中央区笹丘１丁目２８−７４", tel: "0120-202-2222", \
    abstract: "ぺっかー", store_hours: "20:00 ~ 3:00", category: "財布, 定期入れ, 名刺入れ, ポーチ", \
    situation: "present")

Shop.create(name: "ガゼル大橋", image_path: "/assets/store/store16.jpg", \
    address: "福岡県福岡市早良区荒江2丁目9−5", tel: "0120-123-456", \
    abstract: "概要", store_hours: "12:00 ~ 18:00", category: "スマホケース, バッグ, ブレスレット", \
    situation: "present")

Shop.create(name: "Momo", image_path: "/assets/store/store17.jpg", \
    address: "福岡県福岡市城南区鳥飼７丁目１０－３８", tel: "0120-888-888", \
    abstract: "スピカ概要", store_hours: "10:00 ~ 20:00", category: "指輪, ピアス, 腕時計, バッグ, ネクタイ", \
    situation: "present, birthday")

Shop.create(name: "Nana", image_path: "/assets/store/store18.jpg", \
    address: "福岡県福岡市早良区昭代２丁目８−３３", tel: "0120-4444-4444", \
    abstract: "概要パックマン", store_hours: "12:00 ~ 24:00", category: "ネクタイ, 腕時計, 指輪, ネクタイ", \
    situation: "birthday")

Shop.create(name: "ザンク", image_path: "/assets/store/store19.jpg", \
    address: "福岡県福岡市中央区地行４丁目１１−３", tel: "0880-5296-1111", \
    abstract: "概要パスタ", store_hours: "6:00 ~ 18:00", category: "スマホケース, 指輪, ネックレス, 腕時計", \
    situation: "wedding, birthday")

Shop.create(name: "マジアカ", image_path: "/assets/store/store20.jpg", \
    address: "福岡県福岡市中央区荒戸３丁目４−６２", tel: "0120-202-2222", \
    abstract: "バラガキ", store_hours: "20:00 ~ 3:00", category: "財布, 定期入れ, 名刺入れ, ポーチ", \
    situation: "present")

Shop.create(name: "ジルドレィ", image_path: "/assets/store/store21.jpg", \
    address: "福岡県福岡市中央区城内", tel: "0120-123-456", \
    abstract: "概要", store_hours: "12:00 ~ 18:00", category: "スマホケース, ネクタイ, 腕時計", \
    situation: "present")

Shop.create(name: "金tone", image_path: "/assets/store/store22.jpg", \
    address: "福岡県福岡市、中央区大名2-6-60", tel: "0120-888-888", \
    abstract: "スピカ概要", store_hours: "10:00 ~ 20:00", category: "指輪, ピアス, 腕時計, バッグ, ボールペン", \
    situation: "present, birthday")

Shop.create(name: "梶木", image_path: "/assets/store/store23.jpg", \
    address: "福岡県福岡市、中央区天神１丁目１５−４", tel: "0120-4444-4444", \
    abstract: "概要パックマン", store_hours: "12:00 ~ 24:00", category: "ネクタイ, 腕時計, 指輪, ネクタイ", \
    situation: "birthday")

Shop.create(name: "west scale", image_path: "/assets/store/store24.jpg", \
    address: "福岡県福岡市、博多区中洲3-7-24", tel: "0880-5296-1111", \
    abstract: "概要パスタ", store_hours: "6:00 ~ 18:00", category: "スマホケース, 指輪, ネックレス, ボールペン, ネクタイ", \
    situation: "wedding, birthday")

Shop.create(name: "garireo", image_path: "/assets/store/store25.jpg", \
    address: "福岡県福岡市、中央区今泉１丁目２０−１７、アーバンＢＬＤ天神", tel: "0120-202-2222", \
    abstract: "概要触手", store_hours: "20:00 ~ 3:00", category: "財布, 定期入れ, 名刺入れ, ポーチ", \
    situation: "present")

Shop.create(name: "born", image_path: "/assets/store/store26.jpg", \
    address: "福岡県福岡市中央区今泉１丁目１８−５５、天神南ロイヤルハイツ 1F", tel: "0120-123-456", \
    abstract: "概要", store_hours: "12:00 ~ 18:00", category: "指輪, スマホケース, ネクタイ, キーケース, 腕時計", \
    situation: "present")

Shop.create(name: "MajicalTime", image_path: "/assets/store/store27.jpg", \
    address: "福岡県福岡市、中央区大名１丁目６−１３", tel: "0120-888-888", \
    abstract: "スピカ概要", store_hours: "10:00 ~ 20:00", category: "指輪, ピアス, 腕時計, バッグ", \
    situation: "present, birthday")

Shop.create(name: "kijiwa", image_path: "/assets/store/store28.jpg", \
    address: "福岡県福岡市中央区大名２丁目４−７", tel: "0120-4444-4444", \
    abstract: "概要パックマン", store_hours: "12:00 ~ 24:00", category: "ネクタイ, 腕時計, 指輪, ネクタイ, ポーチ", \
    situation: "birthday")

Shop.create(name: "Mountain", image_path: "/assets/store/store29.jpg", \
    address: "福岡県福岡市、中央区舞鶴１丁目４−３１", tel: "0880-5296-1111", \
    abstract: "概要パスタ", store_hours: "6:00 ~ 18:00", category: "スマホケース, 指輪, ネックレス, ネクタイ, 定期入れ, 名刺入れ", \
    situation: "wedding, birthday")

Shop.create(name: "elect", image_path: "/assets/store/store30.jpg", \
    address: "福岡県福岡市中央区天神４丁目８−２８", tel: "0120-202-2222", \
    abstract: "概要触手", store_hours: "20:00 ~ 3:00", category: "財布, 定期入れ, 名刺入れ, ポーチ, バッグ", \
    situation: "present")
