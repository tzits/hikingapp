class AddsImportantToChecklistItems < ActiveRecord::Migration[5.0]
  def change
    add_column :checklist_items, :important, :boolean
  end
end
