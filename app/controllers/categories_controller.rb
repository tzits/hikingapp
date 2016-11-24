class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:category_id])
    @list = List.find(params[:id])
    @clist = @list.categories.find_each
  end
end
