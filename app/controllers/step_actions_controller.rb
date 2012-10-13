class StepActionsController < ApplicationController
  load_and_authorize_resource

  def create
    @step_action = StepAction.new(params[:step_action])

    if @step_action.save
      redirect_to @step_action, notice: 'Step action was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @step_action.update_attributes(params[:step_action])
      redirect_to @step_action, notice: 'Step action was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @step_action.destroy
    redirect_to step_actions_url
  end
end
