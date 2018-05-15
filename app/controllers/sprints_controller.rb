class SprintsController < ApplicationController
  def index
    @sprints = Sprint.all.order(start: :desc)
    @sprint = Sprint.new
    3.times { @sprint.objectives.build }
  end

  def new
  end

  def create
    @sprint = Sprint.new(sprint_params)

    if @sprint.save
      @sprint.objectives.create(sprint_params[:objectives_attributes])
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
      :name,
      :description,
      :objectives,
      :objectives_attributes
    )
  end
end
