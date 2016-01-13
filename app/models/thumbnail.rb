class Thumbnail < ActiveRecord::Base
  belongs_to :content
  mount_uploader :creative, ImageUploader

  validate :file_size

    # 5MB以上のファイルはUPLOADできないようにしてみる
  def file_size
      upload_limit = 3.megabytes.to_i
      if creative.file.size > upload_limit
        errors.add(:avater, "のサイズが大きすぎます。")
      end
    end
end

