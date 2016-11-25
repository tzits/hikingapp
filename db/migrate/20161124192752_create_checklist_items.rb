class CreateChecklistItems < ActiveRecord::Migration[5.0]
  def change
    create_table :checklist_items do |t|
      t.string :name
      t.boolean :checked
      t.belongs_to :checklist, foreign_key: true

      t.timestamps
    end
  end
end
