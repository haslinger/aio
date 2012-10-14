class PagesController < ApplicationController
  load_and_authorize_resource

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
end
