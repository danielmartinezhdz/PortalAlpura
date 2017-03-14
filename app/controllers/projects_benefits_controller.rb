class ProjectsBenefitsController < ApplicationController
  before_action :set_projects_benefit, only: [:show, :edit, :update, :destroy]

  # GET /projects_benefits
  # GET /projects_benefits.json
  def index
    @projects_benefits = ProjectsBenefit.all
  end

  # GET /projects_benefits/1
  # GET /projects_benefits/1.json
  def show
  end

  # GET /projects_benefits/new
  def new
    @projects_benefit = ProjectsBenefit.new
  end

  # GET /projects_benefits/1/edit
  def edit
  end

  # POST /projects_benefits
  # POST /projects_benefits.json
  def create
    @projects_benefit = ProjectsBenefit.new(projects_benefit_params)

    respond_to do |format|
      if @projects_benefit.save
        format.html { redirect_to @projects_benefit, notice: 'Projects benefit was successfully created.' }
        format.json { render :show, status: :created, location: @projects_benefit }
      else
        format.html { render :new }
        format.json { render json: @projects_benefit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_benefits/1
  # PATCH/PUT /projects_benefits/1.json
  def update
    respond_to do |format|
      if @projects_benefit.update(projects_benefit_params)
        format.html { redirect_to @projects_benefit, notice: 'Projects benefit was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_benefit }
      else
        format.html { render :edit }
        format.json { render json: @projects_benefit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_benefits/1
  # DELETE /projects_benefits/1.json
  def destroy
    @projects_benefit.destroy
    respond_to do |format|
      format.html { redirect_to projects_benefits_url, notice: 'Projects benefit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_benefit
      @projects_benefit = ProjectsBenefit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_benefit_params
      params.require(:projects_benefit).permit(:project_id, :name)
    end
end
