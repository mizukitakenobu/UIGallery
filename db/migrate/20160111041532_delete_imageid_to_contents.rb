class DeleteImageidToContents < ActiveRecord::Migration
  def change
    remove_column :contents, :image_id
  end
end
