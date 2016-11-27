module UsersHelper
  # @sql_hike = User.find_by_sql("SELECT * FROM user_list_category_items WHERE user_id = #{params[:id]} AND list_id = 1")
  # @sql_bike = User.find_by_sql("SELECT * FROM user_list_category_items WHERE user_id = #{params[:id]} AND list_id = 2")
  # @sql_canoe = User.find_by_sql("SELECT * FROM user_list_category_items WHERE user_id = #{params[:id]} AND list_id = 3")

  def add_checklists(user)
    ChecklistItem.all.each do |check|
      UserChecklistItem.create(checked: false, user_id: user.id, checklist_item_id: check.id)
    end
  end
end
