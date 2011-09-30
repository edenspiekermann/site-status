class SectionsController < ApplicationController
  # GET /sections
  # GET /sections.json
  def index
    @sections = Section.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sections }
    end
  end

  # GET /sections/1
  # GET /sections/1.json
  def show
    @section = Section.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section }
    end
  end

  # GET /sections/new
  # GET /sections/new.json
  def new
    @section = Section.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section }
    end
  end

  # GET /sections/1/edit
  def edit
    @section = Section.find(params[:id])
  end

  # POST /sections
  # POST /sections.json
  def create
    @site = Site.find(params[:site_id])
    @section = @site.sections.create(params[:section])
    redirect_to site_path(@site)
  end

  # PUT /sections/1
  # PUT /sections/1.json
  def update
    @site = Site.find(params[:site_id])
    @section = Section.find(params[:id])

    respond_to do |format|
      if @section.update_attributes(params[:section])
        format.html { redirect_to @site, notice: 'Section was successfully updated.' }
        format.json { head :ok }
      else
        format.html { redirect_to @site, notice: 'Error when updating section.' }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.json
  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    @site = Site.find(params[:site_id])

    respond_to do |format|
      format.html { redirect_to @site }
      format.json { head :ok }
    end
  end
end
