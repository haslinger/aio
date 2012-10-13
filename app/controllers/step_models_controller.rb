class StepModelsController < ApplicationController
  load_and_authorize_resource

  def create
    if @step_model.save
      redirect_to @step_model, notice: 'Step model was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @step_model.update_attributes(params[:step_model])
      redirect_to @step_model, notice: 'Step model was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @step_model.destroy
    redirect_to step_models_url
  end
end
