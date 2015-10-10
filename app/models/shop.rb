class Shop < ActiveRecord::Base
  attr_accessor :shops, :categorys, :situation, :area

  def filter_category
    @shop_ids = []
    @categorys.each do |category|
      @hit_shops = Shop.where("category like ?", "%#{category}%")
      matching_shops_ids(category)
    end
    @shop_ids.uniq!
  end

  def filter_situation
    hit_shops = Shop.where("situation like ?", "%#{@situation}%")
    hit_shops.map{|hit_shop|
      @shop_ids << hit_shop.id
    }
    @shop_ids.sort!
    @shop_ids = @shop_ids.select.with_index{|e, i| e == @shop_ids[i+1]} unless @categorys.class == NilClass
  end

  def filter_area
    if @area.present?
      hit_shops = Shop.where("address like ?", "%#{@area}%")
      hit_shops.map{|hit_shop|
        @shop_ids << hit_shop.id
      }
      @shop_ids.sort!
      @shop_ids = @shop_ids.select.with_index{|e, i| e == @shop_ids[i+1]}
    end
  end

  def set_category(params)
    @categorys = params
  end

  def set_situation(params)
    @situation = params
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
