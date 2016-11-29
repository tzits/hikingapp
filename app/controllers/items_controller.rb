class ItemsController < ApplicationController
  def create
    list = List.find(params[:item][:list_id])
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      store_item(params[:item][:category_id],params[:item][:list_id],@item)
      redirect_to category_path(list, list.next(@new_ulci.category.id))
    else
      flash[:error] = @user.errors.full_messages.join(". ")
      redirect_to user_path(current_user)
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name,:brand,:size,:unit,:price,:weight,:image)
  end
end
