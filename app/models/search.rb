class Search < ActiveRecord::Base
  def get_shops(category)
    return Shop.where(category:category)
  end
end
