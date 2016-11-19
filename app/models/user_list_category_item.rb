class UserListCategoryItem < ApplicationRecord
  belongs_to :item
  belongs_to :category
  belongs_to :list
  belongs_to :user
end
