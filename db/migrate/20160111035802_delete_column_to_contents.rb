class DeleteColumnToContents < ActiveRecord::Migration
  def change
    remove_column :contents, :image
  end
end
