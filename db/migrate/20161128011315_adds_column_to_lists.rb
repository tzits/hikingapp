class AddsColumnToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :image, :string
  end
end
