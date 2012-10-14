class ProductsController < ApplicationController
load_and_authorize_resource
  def create
    @product.created_by = current_user.id
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @product.update_attributes(params[:product])
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @product.destroy

    redirect_to products_url
  end
end
