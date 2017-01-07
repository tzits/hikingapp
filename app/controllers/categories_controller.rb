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
    @category=Category.new
  end
end
