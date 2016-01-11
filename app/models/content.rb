class Content < ActiveRecord::Base
  attr_accessor :images, :creative, :caption, :creative_cache
  has_many :images
  accepts_nested_attributes_for :images
end