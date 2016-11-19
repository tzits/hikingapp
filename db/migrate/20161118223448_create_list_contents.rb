class CreateListContents < ActiveRecord::Migration[5.0]
  def change
    create_table :list_contents do |t|
      t.belongs_to :list, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
