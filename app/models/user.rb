class User < ApplicationRecord
  has_many :user_list_category_items, dependent: :destroy
  has_many :items, through: :user_list_category_items
end
