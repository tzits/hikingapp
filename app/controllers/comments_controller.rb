class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.valid?
      @comment.save
      redirect_to user_path(current_user)
    else
      flash[:error] = current_user.errors.full_messages.join(". ")
      redirect_to user_path(current_user)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:title,:body,:rating,:user_id,:item_id)
  end

end
