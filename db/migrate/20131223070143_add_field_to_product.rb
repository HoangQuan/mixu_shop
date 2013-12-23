class AddFieldToProduct < ActiveRecord::Migration
  def change
    remove_column :products, :product_image1
    remove_column :products, :product_image2
    remove_column :products, :product_image3
    add_column :products, :status, :integer
    add_column :products, :image_fb_url1, :string
    add_column :products, :image_fb_url2, :string
    add_column :products, :image_fb_url3, :string
    add_column :products, :amount, :integer
  end
end
