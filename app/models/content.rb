class Content < ActiveRecord::Base
  belongs_to :user
  has_many :images
  attr_accessor :images, :creative, :caption, :creative_cache
  accepts_nested_attributes_for :images
end