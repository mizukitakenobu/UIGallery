class AddCreativeToImages < ActiveRecord::Migration
  def change
    add_column :images, :creative, :text
  end
end
