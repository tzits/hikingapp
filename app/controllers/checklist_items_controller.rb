class ChecklistItemsController < ApplicationController
  def update
    item = ChecklistItem.find(params[:patch][:the_id])
    check_item(item)
    redirect_to checklist_path(item.checklist)
  end

  private

  def item_params
    params.permit(:checked, :name, :advice, :the_id)
  end
end
