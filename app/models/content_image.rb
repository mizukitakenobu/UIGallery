class ContentImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
