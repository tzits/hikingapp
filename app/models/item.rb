class Item < ApplicationRecord
  has_many :comments
  belongs_to :category, optional: true
  has_many :user_list_category_items, dependent: :destroy
  has_many :users, through: :user_list_category_items
end
