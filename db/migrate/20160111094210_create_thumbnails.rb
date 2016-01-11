class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
      t.text :creative
      t.text :caption
      t.integer :content_id
      t.timestamps
    end
  end
end
