class RemoveContentIdFromImages < ActiveRecord::Migration
  def change
    remove_column :images, :content_id, :integer
  end
end
