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
      new_check = Checklist.create(name: @list.name)
      new_check.save
      @list.save
      redirect_to new_list_path(@list)
    else
      flash[:error] = @user.errors.full_messages.join(". ")
      redirect_to user_path(current_user)
    end
  end

  def update_cat
    @list = List.find(params[:id])
    @list.categories.push(Category.find(params[:post][:category]))
    if @list.valid?
      @list.save
      redirect_to new_list_path(@list)
    else
      flash[:error] = @list.errors.full_messages.join(". ")
      redirect_to new_list_path(@list)
    end
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to lists_path
    else
      redirect_to :back
      flash[:error] = @list.errors.full_messages.join(". ")
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
