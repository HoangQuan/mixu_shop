class Admin::Product < ActiveRecord::Base
  require "carrierwave/orm/activerecord"

  validates :name, presence: true

  belongs_to :product_type

  mount_uploader :product_image1, ImageUploader
  mount_uploader :product_image2, ImageUploader
  mount_uploader :product_image3, ImageUploader
end
