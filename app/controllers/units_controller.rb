class UnitsController < ApplicationController
load_and_authorize_resource  

  def create
    @unit.created_by = current_user.id
    if @unit.save
      redirect_to @unit, notice: 'Unit was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @unit.update_attributes(params[:unit])
      redirect_to @unit, notice: 'Unit was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @unit.destroy

    redirect_to units_url
  end
end
