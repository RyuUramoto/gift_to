class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :image_path
      t.string :material
      t.integer :price
      t.references :shop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
