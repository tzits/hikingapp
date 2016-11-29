class Item < ApplicationRecord
  has_many :comments
  belongs_to :category, optional: true
  has_many :user_list_category_items, dependent: :destroy
  has_many :users, through: :user_list_category_items
  validates :name, :brand, :weight, :price, :image, presence: true
  validates :weight, :price, :inclusion => {:in => 0..2500, :message => "Invalid Weight or Price"}
end
