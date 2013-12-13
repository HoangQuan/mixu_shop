class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :size
      t.float :price
      t.integer :product_type_id
      t.string :product_image1
      t.string :product_image2
      t.string :product_image3

      t.timestamps
    end
  end
end
