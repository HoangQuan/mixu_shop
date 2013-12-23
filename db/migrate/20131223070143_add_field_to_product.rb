class AddFieldToProduct < ActiveRecord::Migration
  def change
    add_column :products, :status, :integer
    add_column :products, :image_fb_url1, :string
    add_column :products, :image_fb_url2, :string
    add_column :products, :image_fb_url3, :string
    add_column :products, :amount, :integer
  end
end
