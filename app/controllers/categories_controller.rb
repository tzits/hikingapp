class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:category_id])
    @list = List.find(params[:id])
    @clist = @list.categories.find_each
    @weight = find_weight(current_user)

  end
end
