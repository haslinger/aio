class TokenStatusesController < ApplicationController
  load_and_authorize_resource

  def create
    if @token_status.save
      redirect_to @token_status, notice: 'Token status was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @token_status.update_attributes(params[:token_status])
      redirect_to @token_status, notice: 'Token status was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @token_status.destroy
    redirect_to token_statuses_url
  end
end
