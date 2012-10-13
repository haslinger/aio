class InvoicePositionsController < ApplicationController
load_and_authorize_resource
  # GET /invoice_positions
  # GET /invoice_positions.json
  def index
    @invoice_positions = InvoicePosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoice_positions }
    end
  end

  # GET /invoice_positions/1
  # GET /invoice_positions/1.json
  def show
    @invoice_position = InvoicePosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invoice_position }
    end
  end

  # GET /invoice_positions/new
  # GET /invoice_positions/new.json
  def new
    @invoice_position = InvoicePosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invoice_position }
    end
  end

  # GET /invoice_positions/1/edit
  def edit
    @invoice_position = InvoicePosition.find(params[:id])
  end

  # POST /invoice_positions
  # POST /invoice_positions.json
  def create
    @invoice_position = InvoicePosition.new(params[:invoice_position])

    respond_to do |format|
      if @invoice_position.save
        format.html { redirect_to @invoice_position, notice: 'Invoice position was successfully created.' }
        format.json { render json: @invoice_position, status: :created, location: @invoice_position }
      else
        format.html { render action: "new" }
        format.json { render json: @invoice_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invoice_positions/1
  # PUT /invoice_positions/1.json
  def update
    @invoice_position = InvoicePosition.find(params[:id])

    respond_to do |format|
      if @invoice_position.update_attributes(params[:invoice_position])
        format.html { redirect_to @invoice_position, notice: 'Invoice position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invoice_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_positions/1
  # DELETE /invoice_positions/1.json
  def destroy
    @invoice_position = InvoicePosition.find(params[:id])
    @invoice_position.destroy

    respond_to do |format|
      format.html { redirect_to invoice_positions_url }
      format.json { head :no_content }
    end
  end
end
