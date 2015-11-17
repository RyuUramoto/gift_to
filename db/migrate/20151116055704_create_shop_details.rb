class CreateShopDetails < ActiveRecord::Migration
  def change
    create_table :shop_details do |t|
      t.string :tel
      t.string :store_hours
      t.string :holiday
      t.string :web
      t.text :abstract
      t.references :shop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
