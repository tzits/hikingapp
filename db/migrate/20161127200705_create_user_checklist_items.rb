class CreateUserChecklistItems < ActiveRecord::Migration[5.0]
  def change
    create_table :user_checklist_items do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :checklist_item, foreign_key: true
      t.boolean :checked
      t.timestamps
    end
  end
end
