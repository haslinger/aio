class InvoiceHeadersController < ApplicationController
load_and_authorize_resource  

  def create
    @invoice_header.created_by = current_user.id
    if @invoice_header.save
      redirect_to @invoice_header, notice: 'InvoiceHeader was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @invoice_header.update_attributes(params[:invoice_header])
      redirect_to @invoice_header, notice: 'InvoiceHeader was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @invoice_header.destroy

    redirect_to invoice_headers_url
  end
  
  def new_aio
    @invoice_header = InvoiceHeader.new
    @invoice_header.invoice_positions.build
  end  
  
  def create_aio

    if params[:invoice_header][:invoice_positions_attributes]
      params[:invoice_header][:invoice_positions_attributes].each do |a| a
        @product = Product.find_by_id(a[1][:product_id])
        a[1][:price] = @product.salesprice if @product
        a[1][:value] = a[1][:price].to_i * a[1][:quantity].to_i
        
      end
    end
    
    @invoice_header = InvoiceHeader.new(params[:invoice_header])
    @invoice_header.created_by = current_user.id
    
    if @invoice_header.save
      redirect_to @invoice_header, notice: 'InvoiceHeader was successfully created.'
    else
      render action: "new_aio"
    end
  end  
end
