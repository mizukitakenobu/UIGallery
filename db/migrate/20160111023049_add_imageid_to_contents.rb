class AddImageidToContents < ActiveRecord::Migration
  def change
    add_column :contents, :image_id, :integer
  end
end
