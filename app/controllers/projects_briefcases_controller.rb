class ProjectsBriefcasesController < ApplicationController
  before_action :set_projects_briefcase, only: [:show, :edit, :update, :destroy]

  # GET /projects_briefcases
  # GET /projects_briefcases.json
  def index
    @projects_briefcases = ProjectsBriefcase.all
  end

  # GET /projects_briefcases/1
  # GET /projects_briefcases/1.json
  def show
  end

  # GET /projects_briefcases/new
  def new
    @projects_briefcase = ProjectsBriefcase.new
  end

  # GET /projects_briefcases/1/edit
  def edit
  end

  # POST /projects_briefcases
  # POST /projects_briefcases.json
  def create
    @projects_briefcase = ProjectsBriefcase.new(projects_briefcase_params)

    respond_to do |format|
      if @projects_briefcase.save
        format.html { redirect_to @projects_briefcase, notice: 'Projects briefcase was successfully created.' }
        format.json { render :show, status: :created, location: @projects_briefcase }
      else
        format.html { render :new }
        format.json { render json: @projects_briefcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_briefcases/1
  # PATCH/PUT /projects_briefcases/1.json
  def update
    respond_to do |format|
      if @projects_briefcase.update(projects_briefcase_params)
        format.html { redirect_to @projects_briefcase, notice: 'Projects briefcase was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_briefcase }
      else
        format.html { render :edit }
        format.json { render json: @projects_briefcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_briefcases/1
  # DELETE /projects_briefcases/1.json
  def destroy
    @projects_briefcase.destroy
    respond_to do |format|
      format.html { redirect_to projects_briefcases_url, notice: 'Projects briefcase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_briefcase
      @projects_briefcase = ProjectsBriefcase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_briefcase_params
      params.require(:projects_briefcase).permit(:project_id, :name)
    end
end
