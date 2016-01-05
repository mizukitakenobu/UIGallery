class Content < ActiveRecord::Base
  has_many :content_images
  accepts_nested_attributes_for :content_images
end
