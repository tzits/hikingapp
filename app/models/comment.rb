class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :rating, :inclusion => { :in => 1..5, :error => "The rating must be between 1 and 5" }
end
