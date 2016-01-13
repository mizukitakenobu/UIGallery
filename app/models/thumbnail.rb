class Thumbnail < ActiveRecord::Base
  belongs_to :content
  mount_uploader :creative, ImageUploader
end
