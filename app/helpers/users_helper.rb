module UsersHelper


  def add_checklists(user)
    ChecklistItem.all.each do |check|
      UserChecklistItem.create(checked: false, user_id: user.id, checklist_item_id: check.id)
    end
  end
end
