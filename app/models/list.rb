class List < ApplicationRecord
  has_many :list_contents, dependent: :destroy
  has_many :categories, through: :list_contents
end
