class AddMainCreativeToContents < ActiveRecord::Migration
  def change
    add_column :contents, :main_creative, :text
  end
end
