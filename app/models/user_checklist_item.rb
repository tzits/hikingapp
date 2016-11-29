class UserChecklistItem < ApplicationRecord
  belongs_to :user
  belongs_to :checklist_item
end
