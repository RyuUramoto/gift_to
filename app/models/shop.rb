class Shop < ActiveRecord::Base
  def initialize
    @shops = []
    @shop_ids = []
  end

  def get_shops
    @param.each do |category|
      @hit_shops = Shop.where("category like ?", "%#{category}%")
      matching_shops_ids(category)
    end
    avoid_redundant_id
    return @shops
  end

  def set_params(param)
    @param = param
  end

  private
  def matching_shops_ids(category)
    @hit_shops.each do |shop|
      shop_category = shop.category.split(",")
      shop_category.map!(&:strip)
      shop_category.map{ |str|
        @shop_ids << shop.id if str == category
      }
    end
  end

  def avoid_redundant_id
    @shop_ids.uniq!
    @shop_ids.each do |id|
      @shops << Shop.find_by(id: id)
    end
  end
end
