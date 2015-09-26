json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :image_path, :address, :tel, :abstract, :store_hours, :category, :situation
  json.url shop_url(shop, format: :json)
end
