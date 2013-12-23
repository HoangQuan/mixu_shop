class Product < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :product_type

end
