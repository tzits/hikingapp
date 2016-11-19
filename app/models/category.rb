class Category < ApplicationRecord
  has_many :items
  has_many :list_contents, dependent: :destroy
  has_many :lists, through: :list_contents
end
