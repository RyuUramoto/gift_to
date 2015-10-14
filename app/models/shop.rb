class Shop < ActiveRecord::Base
  attr_accessor :shops, :conditions_categorys, :conditions_situation, :area

  def filter_category
    @shop_ids = []
    @conditions_categorys.each do |category|
      @hit_shops = Shop.where("category like ?", "%#{category}%")
      matching_shops_ids(category)
    end
    @shop_ids.uniq!
  end

  def filter_situation
    hit_shops = Shop.where("situation like ?", "%#{@conditions_situation}%")
    hit_shop_ids = hit_shops.map{|hit_shop| hit_shop.id}
    @shop_ids = @shop_ids & hit_shop_ids
  end

  def filter_area
    if @area.present?
      hit_shops = Shop.where("address like ?", "%#{@area}%")
      hit_shop_ids = hit_shops.map{|hit_shop| hit_shop.id}
      @shop_ids = @shop_ids & hit_shop_ids
    end
  end

  def set_category(params)
    @conditions_categorys = params
  end

  def set_situation(params)
    @conditions_situation = params
  end

  def set_area(params)
    @area = params
  end

  def set_matching_shops
    @shops = []
    @shop_ids.each do |id|
      @shops << Shop.find_by(id: id)
    end
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
end
