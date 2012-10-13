class OutgoingArrowsController < ApplicationController
  load_and_authorize_resource

  def create
    if @outgoing_arrow.save
      redirect_to @outgoing_arrow, notice: 'Outgoing arrow was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @outgoing_arrow.update_attributes(params[:outgoing_arrow])
      redirect_to @outgoing_arrow, notice: 'Outgoing arrow was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @outgoing_arrow.destroy
    redirect_to outgoing_arrows_url
  end
end
