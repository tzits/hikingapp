class ChecklistsController < ApplicationController
  def index
    @checklsits = Checklist.all
  end
  def show
    @checklist = Checklist.find(params[:id])
  end
end
