class TokensController < ApplicationController
  load_and_authorize_resource

  def create
    @token.created_by = current_user.id
    if @token.save
      redirect_to @token, notice: 'Token was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @token.updated_by = current_user.id
    if @token.update_attributes(params[:token])
      redirect_to @token, notice: 'Token was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @token.destroy
    redirect_to tokens_url
  end

  def show_waiting
    @waiting = TokenStatus.find_by_name("waiting")
    @tokens = Token.where(:token_status_id => @waiting.id)
  end

  def edit_aio
    @token = Token.find(params[:id])
    redirect_to :controller => @token.step.step_model.name.tableize , :action => @token.step.step_action.name, :id => @token.id
  end

  def update_aio
    @token = Token.find(params[:id])
    @finished = TokenStatus.find_by_name("finished")
    @token.last_step_id = @token.step_id

    # is there a successor ... to be improved for decisions ....
     @successors = Step.find_by_id(@token.step.id).successors

     if @successors.any?
      @token.step_id = @successors.first.id
      # next step
      redirect_to edit_aio_token_path
    else
      @token.step_id = nil
      @token.token_status_id = @finished.id
      @token.save
      # we're done!
      redirect_to show_waiting_tokens_path
    end
  end
end
