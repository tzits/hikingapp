class CategoriesController < ApplicationController
  def index
  end
  def show
    @category = Category.find(params[:category_id])
    @list = List.find(params[:id])
    @weight = find_weight(current_user)
    @price = find_price(current_user)
  end
  def create
    list = List.find(params[:id])
    @category = Category.new(cat_params)
    if @category.valid?
      list.categories.push(@category)
      @category.save
      redirect_to new_list_path(list)
    else
      flash[:error] = @category.errors.full_messages.join(". ")
      redirect_to new_list_path(list)
    end
  end

  def remove_item
    cat = Category.find(params[:category_id])
    cat.items.find(params[:delete][:blah]).delete
    redirect_to :back
  end

  private

  def cat_params
    params.require(:category).permit(:name)
  end
end
