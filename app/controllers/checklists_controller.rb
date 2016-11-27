class ChecklistsController < ApplicationController
  def index
    @checklists = current_user.checklists
  end
  def show
    @checklist = Checklist.find(params[:id])
  end
end
