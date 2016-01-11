class AddColumnToImages < ActiveRecord::Migration
  def change
    add_column :images, :content_id, :integer
  end
end
