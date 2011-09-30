class PagesController < ApplicationController
  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

  # GET /pages/new
  # GET /pages/new.json
  def new
    @page = Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page }
    end
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
  end

  # POST /pages
  # POST /pages.json
  def create
    @site = Site.find(params[:site_id])
    @section = Section.find(params[:section_id])
    @page = @section.pages.create(params[:page])
    redirect_to site_path(@site)
    
    #@page = Page.new(params[:page])

    #respond_to do |format|
    #  if @page.save
    #    format.html { redirect_to @page, notice: 'Page was successfully created.' }
    #    format.json { render json: @page, status: :created, location: @page }
    #  else
    #    format.html { render action: "new" }
    #    format.json { render json: @page.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # PUT /pages/1
  # PUT /pages/1.json
  def update
    @page = Page.find(params[:id])
    @site = Site.find(params[:site_id])
    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to site_path(@site), notice: 'Page was successfully updated.' }
        format.json { head :ok }
      else
        format.html { redirect_to site_path(@site), notice: 'error when updating page' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
        
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @site = Site.find(params[:site_id])
    @page = Page.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to site_path(@site) }
      format.json { head :ok }
    end
  end
end
