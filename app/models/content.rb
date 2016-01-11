class Content < ActiveRecord::Base
  has_many :images
  accepts_nested_attributes_for :images
  before_validation :image_creative_to_id, if: :has_image_creative?

  private
  def has_image_creative
    image_creative.present?
  end

  def image_creative_to_id
    image = Image.where(creative: image_creative).first_or_create
    self.image_id = image.id
  end
end
