class Admin::Product < ActiveRecord::Base

  VALID_URL_REGEX = /\A(http:\/\/|https:\/\/)[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?\z/
  validates :name, presence: true
  validates :image_fb_url1, presence: true, format: {with: VALID_URL_REGEX}
  validates :image_fb_url2, presence: true, format: {with: VALID_URL_REGEX}
  validates :image_fb_url3, presence: true, format: {with: VALID_URL_REGEX}

  belongs_to :product_type
  scope :order_by_created, ->{order "products.created_at DESC"}
  scope :order_by_updated, ->{order "products.created_at DESC"}

end
