class ChecklistItemsController < ApplicationController
  def update
    item = ChecklistItem.find(params[:patch][:the_id])
    check_item(item)
    redirect_to checklist_path(item.checklist)
  end

  def create
    @item = ChecklistItem.create(checked: params[:create][:checked], name: params[:create][:name], advice: params[:create][:advice], checklist_id: params[:id])
    if @item.valid?
      @item.save
      UserChecklistItem.create(user_id: current_user.id, checklist_item_id: @item.id, checked: false)
      redirect_to checklist_path(Checklist.find(params[:id]))
    else
      redirect_to :back
      flash[:error] = @item.errors.full_messages.join(". ")
    end
  end

  private

  def item_params
    params.permit(:checked, :name, :advice, :the_id)
  end
end
