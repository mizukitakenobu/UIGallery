class Content < ActiveRecord::Base
  attr_accessor :images, :creative, :caption
  has_many :images
  accepts_nested_attributes_for :images
end