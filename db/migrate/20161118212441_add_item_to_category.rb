class AddItemToCategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :item, foreign_key: true
  end
end
