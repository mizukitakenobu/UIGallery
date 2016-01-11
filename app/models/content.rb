class Content < ActiveRecord::Base
  belongs_to :user
  has_many :thumbnails
  attr_accessor :thumnails, :creative, :caption, :creative_cache
  accepts_nested_attributes_for :thumbnails
end