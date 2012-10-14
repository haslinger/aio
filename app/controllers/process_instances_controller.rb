class ProcessInstancesController < ApplicationController
  load_and_authorize_resource

  def create
    @process_instance.created_by = current_user.id
    if @process_instance.save
      redirect_to @process_instance, notice: 'Process instance was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @process_instance.update_attributes(params[:process_instance])
     redirect_to @process_instance, notice: 'Process instance was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @process_instance.destroy
    redirect_to process_instances_url
  end
end
