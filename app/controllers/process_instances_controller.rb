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

  def create_aio
    # Pick up token
    @token = Token.find_by_id(params[:token])

    # Create process instance from token
    @process_instance = ProcessInstance.new()
    @process_instance.created_by = current_user.id
    @process_instance.company_id = current_company.id
    @process_instance.business_process_id = @token.business_process_id

    # Create running process instance
    @first_step = @process_instance.business_process.default_start
    @running = TokenStatus.find_by_name("running")
    @instance_token = @process_instance.tokens.new(:company_id => current_company.id, :business_process_id => @token.business_process_id,
                                 :step_id => @first_step.id, :token_status_id => @running.id, :created_by => current_user.id)

    if @process_instance.save
      redirect_to edit_aio_token_path(@instance_token)
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
