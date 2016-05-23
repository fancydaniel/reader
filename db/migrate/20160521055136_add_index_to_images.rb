class AddIndexToImages < ActiveRecord::Migration
  def change
    add_index :images, :item_id
  end
end
