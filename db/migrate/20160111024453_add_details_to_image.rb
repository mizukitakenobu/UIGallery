class AddDetailsToImage < ActiveRecord::Migration
  def up
    remove_column :images, :image
  end

  def down
    add_column :images, :creative, :text
  end
end
