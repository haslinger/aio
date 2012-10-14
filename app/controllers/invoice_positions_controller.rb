class InvoicePositionsController < ApplicationController
load_and_authorize_resource  

  def create
    if @invoice_position.save
      redirect_to @invoice_position, notice: 'InvoicePosition was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @invoice_position.update_attributes(params[:unit])
      redirect_to @invoice_position, notice: 'InvoicePosition was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @invoice_position.destroy

    redirect_to units_url
  end
end
