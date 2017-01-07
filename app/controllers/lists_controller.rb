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

  private

  def list_params
    params.require(:list).permit(:name, :image)
  end

end
