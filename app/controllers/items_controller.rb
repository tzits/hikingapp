class ItemsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @list = List.find(params[:id])
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

  def admin_create
    @category = Category.find(params[:id])
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      @category.items.push(@item)
      redirect_to items_new_path(@category)
    else
      flash[:error] = 'NEW ITEM NOT CREATED. ' + @item.errors.full_messages.join(". ")
      redirect_to items_new_path(@category)
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
