class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.float :weight
      t.float :size
      t.string :unit
      t.string :image

      t.timestamps
    end
  end
end
