class AddsColumnToChecklistItems < ActiveRecord::Migration[5.0]
  def change
    add_column :checklist_items, :advice, :string
  end
end
