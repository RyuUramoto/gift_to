class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :image_path
      t.string :address
      t.string :tel
      t.text :abstract
      t.string :store_hours
      t.string :category
      t.string :situation

      t.timestamps null: false
    end
  end
end
