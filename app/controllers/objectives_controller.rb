class ObjectivesController < ApplicationController
  def complete
    @sprint = Sprint.find(params[:sprint_id])
    @objective = @sprint.objectives.find(params[:id])
    @objective.update(completed: !@objective.completed)
    redirect_to root_path
  end
end
