class AddContentRefToImage < ActiveRecord::Migration
  def change
    add_column :images, :content, :string
    add_column :images, :references, :string
  end
end
