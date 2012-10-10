class SubSectionsController < ApplicationController
  # GET /sub_sections
  # GET /sub_sections.json
  def index
    @sub_sections = SubSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sub_sections }
    end
  end

  # GET /sub_sections/1
  # GET /sub_sections/1.json
  def show
    @sub_section = SubSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sub_section }
    end
  end

  # GET /sub_sections/new
  # GET /sub_sections/new.json
  def new
    @sub_section = SubSection.new
    @sections = Section.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sub_section }
    end
  end

  # GET /sub_sections/1/edit
  def edit
    @sub_section = SubSection.find(params[:id])
    @sections = Section.all
  end

  # POST /sub_sections
  # POST /sub_sections.json
  def create
    debugger
    @sub_section = SubSection.new(params[:sub_section])

    respond_to do |format|
      if @sub_section.save
        format.html { redirect_to @sub_section, notice: 'Sub section was successfully created.' }
        format.json { render json: @sub_section, status: :created, location: @sub_section }
      else
        format.html { render action: "new" }
        format.json { render json: @sub_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sub_sections/1
  # PUT /sub_sections/1.json
  def update
    @sub_section = SubSection.find(params[:id])

    respond_to do |format|
      if @sub_section.update_attributes(params[:sub_section])
        format.html { redirect_to @sub_section, notice: 'Sub section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sub_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_sections/1
  # DELETE /sub_sections/1.json
  def destroy
    @sub_section = SubSection.find(params[:id])
    @sub_section.destroy

    respond_to do |format|
      format.html { redirect_to sub_sections_url }
      format.json { head :no_content }
    end
  end
end
