class UserListCategoryItemsController < ApplicationController

  def create
    ulci = UserListCategoryItem.new(ulci_params)
    @list = List.find(ulci.list.id)
    if ulci.valid?
      ulci.save
      if @list.is_finished(ulci.category.id)
        redirect_to user_path(current_user.id)
      else
        redirect_to category_path(@list, @list.next(ulci.category.id))
      end
    else
      redirect_to :back
    end
  end

  def destroy
    @ulci = current_user.user_list_category_items.find_by(item_id: params[:item_id])
    @ulci.destroy
    redirect_to user_path(current_user)
  end

  private
  def ulci_params
    params.require(:user_list_category_item).permit(:list_id, :category_id, :user_id, :item_id)
  end
end
