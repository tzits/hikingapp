module ChecklistItemsHelper
  def check_item(item)
    user_item = UserChecklistItem.find_by_sql("SELECT * FROM user_checklist_items WHERE user_id = #{current_user.id} AND checklist_item_id = #{item.id}")
    user_item.first.checked = true
    user_item.first.save
  end
end
