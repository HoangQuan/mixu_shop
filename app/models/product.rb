class Product < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :product_type

  scope :order_by_created, ->{order "products.created_at DESC"}
  scope :order_by_updated, ->{order "products.created_at DESC"}

end
