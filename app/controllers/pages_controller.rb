class PagesController < ApplicationController
  load_and_authorize_resource :except => [:dummy_in_aio, :dummy_out_aio]
  skip_authorization_check :only =>  [:dummy_in_aio, :dummy_out_aio]

  def read
    @page = Page.find(params[:id])
    @paragraphs = @page.content.lines
    if @page.name == "landing"
      render layout: "landing"
    end
  end

  def create
    if @page.save
      redirect_to @page, notice: 'Page was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @page.update_attributes(params[:page])
      redirect_to @page, notice: 'Page was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @page.destroy
    redirect_to pages_url
  end

  def dummy_in_aio
    @token = Token.find_by_id(params[:id])
    puts "Dummy IN Step is running via Token #{@token}"
  end

  def dummy_out_aio
    @token = Token.find_by_id(params[:token])
    puts "Dummy OUT Step is running via Token #{@token}"
    redirect_to update_aio_token_path(@token.id)
  end
end
