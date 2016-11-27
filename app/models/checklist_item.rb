class ChecklistItem < ApplicationRecord
  belongs_to :checklist
  has_many :user_checklist_items
end
