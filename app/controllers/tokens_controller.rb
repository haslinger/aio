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
end
