class StepsController < ApplicationController
  load_and_authorize_resource

  def create
    @step.created_by = current_user.id
      if @step.save
        redirect_to @step, notice: 'Step was successfully created.'
      else
        render action: "new"
      end
  end

  def update
      if @step.update_attributes(params[:step])
        redirect_to @step, notice: 'Step was successfully updated.'
      else
        render action: "edit"
      end
  end

  def destroy
    @step.destroy
    redirect_to steps_url
  end
end
