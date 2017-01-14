class ListsController < ApplicationController
  def new
    @list = List.find(params[:id])
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @categories = @list.categories
  end

  def edit
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    if @list.valid?
      @list.save
      redirect_to new_list_path(@list)
    else
      flash[:error] = @user.errors.full_messages.join(". ")
      redirect_to user_path(current_user)
    end
  end

  def update
    @list = List.find(params[:id])
    @list.categories.push(Category.find(params[:list][:category]))
    if @list.valid?
      @list.save
      redirect_to new_list_path(@list)
    else
      flash[:error] = @list.errors.full_messages.join(". ")
      redirect_to new_list_path(@list)
    end
  end

  def delete_cat
    @list = List.find(params[:id])
    @list.categories.delete(Category.find(params[:category_id]))
    @list.save
    redirect_to new_list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name, :image, :categories)
  end


end
