class SprintsController < ApplicationController
  def index
    @sprints = Sprint.all
    @sprint = Sprint.new
  end

  def new
  end

  def create
    @sprint = Sprint.new(sprint_params)
    if @sprint.save
      redirect_to root_path
    else
      return
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def sprint_params
    params.require(:sprint).permit(
      :start,
      :end,
      :name
    )
  end
end
