class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.string :image_url
      t.integer :item_id

      t.timestamps
    end
  end
end
