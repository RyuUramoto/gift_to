class Shop < ActiveRecord::Base
  has_many :item
  has_one :shop_detail
  geocoded_by :address
  after_validation :geocode
  attr_accessor :conditions_categorys, :area

  def filter_category
    @shop_ids = []
    set_shop_ids
    @shop_ids.uniq!
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
    @conditions_categorys = params[:top][:category]
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

  def self.get_shop_pictures_path(obj)
    path = obj.image_path + "/" + "*"
    shop_images = []
    dirs = Dir.glob("**/"+path)
    dirs.each do |d|
      d.slice!("app")
      d.slice!("images/")
      shop_images << d
    end
    return shop_images
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
