class RolesController < ApplicationController
  load_and_authorize_resource

  def create
    if @role.save
      redirect_to @role, notice: 'Role was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @role.update_attributes(params[:role])
      redirect_to @role, notice: 'Role was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @role.destroy
    redirect_to roles_url
  end
end
