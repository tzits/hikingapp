class ItemsController < ApplicationController
  def new
    @category = List.find(params[:id]).categories
  end

  def create
    list = List.find(params[:item][:list_id])
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      store_item(params[:item][:category_id],params[:item][:list_id],@item)
      redirect_to category_path(list, list.next(@new_ulci.category.id))
    else
      redirect_to category_path(list, params[:item][:category_id])
      flash[:error] = 'NEW ITEM NOT CREATED. ' + @item.errors.full_messages.join(". ")
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
