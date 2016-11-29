class ChecklistItemsController < ApplicationController
  def update
    item = ChecklistItem.find(params[:patch][:the_id])
    user_item = UserChecklistItem.find_by_sql("SELECT * FROM user_checklist_items WHERE user_id = #{current_user.id} AND checklist_item_id = #{item.id}")
    user_item.first.checked = true
    user_item.first.save
    redirect_to checklist_path(item.checklist)
  end

  private

  def item_params
    params.permit(:checked, :name, :advice, :the_id)
  end
end
