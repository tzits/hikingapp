class ChecklistsController < ApplicationController
  def index
    @checklists = Checklist.all
  end
  def show
    @sql_list = User.find_by_sql("SELECT * FROM user_checklist_items WHERE user_id = #{current_user.id}")
  end
end
