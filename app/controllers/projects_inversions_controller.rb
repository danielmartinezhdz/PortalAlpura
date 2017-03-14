class ProjectsInversionsController < ApplicationController
  before_action :set_projects_inversion, only: [:show, :edit, :update, :destroy]

  # GET /projects_inversions
  # GET /projects_inversions.json
  def index
    @projects_inversions = ProjectsInversion.all
  end

  # GET /projects_inversions/1
  # GET /projects_inversions/1.json
  def show
  end

  # GET /projects_inversions/new
  def new
    @projects_inversion = ProjectsInversion.new
  end

  # GET /projects_inversions/1/edit
  def edit
  end

  # POST /projects_inversions
  # POST /projects_inversions.json
  def create
    @projects_inversion = ProjectsInversion.new(projects_inversion_params)

    respond_to do |format|
      if @projects_inversion.save
        format.html { redirect_to @projects_inversion, notice: 'Projects inversion was successfully created.' }
        format.json { render :show, status: :created, location: @projects_inversion }
      else
        format.html { render :new }
        format.json { render json: @projects_inversion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_inversions/1
  # PATCH/PUT /projects_inversions/1.json
  def update
    respond_to do |format|
      if @projects_inversion.update(projects_inversion_params)
        format.html { redirect_to @projects_inversion, notice: 'Projects inversion was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_inversion }
      else
        format.html { render :edit }
        format.json { render json: @projects_inversion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_inversions/1
  # DELETE /projects_inversions/1.json
  def destroy
    @projects_inversion.destroy
    respond_to do |format|
      format.html { redirect_to projects_inversions_url, notice: 'Projects inversion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_inversion
      @projects_inversion = ProjectsInversion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_inversion_params
      params.require(:projects_inversion).permit(:project_id, :quantity)
    end
end
