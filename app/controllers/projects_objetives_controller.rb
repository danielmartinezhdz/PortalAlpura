class ProjectsObjetivesController < ApplicationController
  before_action :set_projects_objetive, only: [:show, :edit, :update, :destroy]

  # GET /projects_objetives
  # GET /projects_objetives.json
  def index
    @projects_objetives = ProjectsObjetive.all
  end

  # GET /projects_objetives/1
  # GET /projects_objetives/1.json
  def show
  end

  # GET /projects_objetives/new
  def new
    @projects_objetive = ProjectsObjetive.new
  end

  # GET /projects_objetives/1/edit
  def edit
  end

  # POST /projects_objetives
  # POST /projects_objetives.json
  def create
    @projects_objetive = ProjectsObjetive.new(projects_objetive_params)

    respond_to do |format|
      if @projects_objetive.save
        format.html { redirect_to @projects_objetive, notice: 'Projects objetive was successfully created.' }
        format.json { render :show, status: :created, location: @projects_objetive }
      else
        format.html { render :new }
        format.json { render json: @projects_objetive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_objetives/1
  # PATCH/PUT /projects_objetives/1.json
  def update
    respond_to do |format|
      if @projects_objetive.update(projects_objetive_params)
        format.html { redirect_to @projects_objetive, notice: 'Projects objetive was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_objetive }
      else
        format.html { render :edit }
        format.json { render json: @projects_objetive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_objetives/1
  # DELETE /projects_objetives/1.json
  def destroy
    @projects_objetive.destroy
    respond_to do |format|
      format.html { redirect_to projects_objetives_url, notice: 'Projects objetive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_objetive
      @projects_objetive = ProjectsObjetive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_objetive_params
      params.require(:projects_objetive).permit(:project_id, :name)
    end
end
