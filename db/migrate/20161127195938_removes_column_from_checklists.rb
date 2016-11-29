class RemovesColumnFromChecklists < ActiveRecord::Migration[5.0]
  def change
    remove_column :checklists, :user_id, :integer
  end
end
