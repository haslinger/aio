class CurrenciesController < ApplicationController
load_and_authorize_resource

  def create
    @currency.created_by = current_user.id
    if @currency.save
      redirect_to @currency, notice: 'Currency was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @currency.update_attributes(params[:currency])
      redirect_to @currency, notice: 'Currency was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @currency.destroy

    redirect_to currencies_url
  end
end
