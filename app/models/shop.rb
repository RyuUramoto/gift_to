class Shop < ActiveRecord::Base
  has_many :item
  geocoded_by :address
  after_validation :geocode
  attr_accessor :conditions_categorys, :conditions_situation, :area

  def filter_category
    @shop_ids = []
    set_shop_ids
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

  def set_matching_shops
    @shops = []
    @shop_ids.each do |id|
      @shops << Shop.find_by(id: id)
    end
    return @shops
  end

  def set_params(params)
    params.require(:top).permit(:category, :situation, :area)
    @conditions_categorys = params[:top][:category]
    @conditions_situation = params[:top][:situation]
    @area = params[:top][:area]
  end

  def get_markers(shops)
    hash = Gmaps4rails.build_markers(shops) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
      marker.infowindow shop.name
      marker.json({name: shop.name})
    end
    return hash
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

  def set_shop_ids
    if @conditions_categorys.nil?
      @conditions_categorys = ["未選択"]
      Shop.all.map{|shop| @shop_ids << shop.id}
    else
      @conditions_categorys.each do |category|
        @hit_shops = Shop.where("category like ?", "%#{category}%")
        matching_shops_ids(category)
      end
    end
  end
end
