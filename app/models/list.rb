class List < ApplicationRecord
  has_many :list_contents, dependent: :destroy
  has_many :categories, through: :list_contents


  def is_finished?
    if (@list.next(x))
      false
    else
      true
    end
  end

  def next(x)
    self.categories.where("category_id > #{x}", id).first
  end

end
