class CreateUserListCategoryItems < ActiveRecord::Migration[5.0]
  def change
    create_table :user_list_category_items do |t|
      t.belongs_to :item, foreign_key: true
      t.belongs_to :category, foreign_key: true
      t.belongs_to :list, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
