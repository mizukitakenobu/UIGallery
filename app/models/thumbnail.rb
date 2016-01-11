class Thumbnail < ActiveRecord::Base
  belongs_to :content
  mount_uploader :image, ImageUploader
end