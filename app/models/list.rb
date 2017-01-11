class List < ApplicationRecord
  has_many :list_contents, dependent: :destroy
  has_many :categories, through: :list_contents
  validates :image, :name, presence: true

  def is_finished(x)
    if self.next(x)
      false
    else
      true
    end
  end

  def next(x)
    self.categories.where("category_id > #{x}", id).first
  end

end
