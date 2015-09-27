# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@shop = Shop.new
@shop[:name] = "pastadeka"
@shop[:image_path] = "/assets/oshare_store.jpg"
@shop[:address] = "福岡県福岡市"
@shop[:tel] = "0120-123-456"
@shop[:abstract] = "概要"
@shop[:store_hours] = "12:00 ~ 18:00"
@shop[:category] = "food, ring"
@shop[:situation] = "present"
@shop.save

@shop = Shop.new
@shop[:name] = "spicaterible"
@shop[:image_path] = "/assets/oshare_store.jpg"
@shop[:address] = "福岡県福岡市"
@shop[:tel] = "0120-888-888"
@shop[:abstract] = "スピカ概要"
@shop[:store_hours] = "10:00 ~ 20:00"
@shop[:category] = "ring, earrings, sunglasses"
@shop[:situation] = "present, birthday"
@shop.save

@shop = Shop.new
@shop[:name] = "パックマン"
@shop[:image_path] = "/assets/oshare_store.jpg"
@shop[:address] = "福岡県宗像市"
@shop[:tel] = "0120-4444-4444"
@shop[:abstract] = "概要パックマン"
@shop[:store_hours] = "12:00 ~ 24:00"
@shop[:category] = "accessory, necklace, ring"
@shop[:situation] = "birthday"
@shop.save

@shop = Shop.new
@shop[:name] = "マ・マー・マー"
@shop[:image_path] = "/assets/oshare_store.jpg"
@shop[:address] = "福岡県和白"
@shop[:tel] = "0880-5296-1111"
@shop[:abstract] = "概要パスタ"
@shop[:store_hours] = "6:00 ~ 18:00"
@shop[:category] = "food, ring, necklace"
@shop[:situation] = "wedding, birthday"
@shop.save

@shop = Shop.new
@shop[:name] = "パラサイト・イヴ二ング"
@shop[:image_path] = "/assets/oshare_store.jpg"
@shop[:address] = "福岡県和白"
@shop[:tel] = "0120-202-2222"
@shop[:abstract] = "概要触手"
@shop[:store_hours] = "20:00 ~ 3:00"
@shop[:category] = "food, watch, earrings"
@shop[:situation] = "present"
@shop.save