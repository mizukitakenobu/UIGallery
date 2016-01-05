class CreateContentImages < ActiveRecord::Migration
  def change
    create_table :content_images do |t|
      t.string :image
      t.integer :content_id
      t.timestamps
    end
  end
end
