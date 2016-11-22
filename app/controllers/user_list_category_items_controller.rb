class UserListCategoryItemsController < ApplicationController

  def create
    ulci = UserListCategoryItem.new(ulci_params)
    @list = List.find(ulci.list.id)
    if ulci.valid?
      ulci.save
      redirect_to category_path(@list, @list.next(ulci.category.id))
    else
      redirect_to :back
    end
  end
  private
  def ulci_params
    params.require(:user_list_category_item).permit(:list_id, :category_id, :user_id, :item_id)
  end
end
