class ServiceSkillsController < ApplicationController
  before_action :set_service_skill, only: [:show, :edit, :update, :destroy]

  # GET /service_skills
  # GET /service_skills.json
  def index
    @services = Service.all
    @service_skills = ServiceSkill.all
  end

  # GET /service_skills/1
  # GET /service_skills/1.json
  def show
  end

  # GET /service_skills/new
  def new
    @service_skill = ServiceSkill.new
  end

  # GET /service_skills/1/edit
  def edit
  end

  # POST /service_skills
  # POST /service_skills.json
  def create
    @service_skill = ServiceSkill.new(service_skill_params)

    respond_to do |format|
      if @service_skill.save
        format.html { redirect_to @service_skill, notice: 'Service skill was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service_skill }
      else
        format.html { render action: 'new' }
        format.json { render json: @service_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_skills/1
  # PATCH/PUT /service_skills/1.json
  def update
    respond_to do |format|
      if @service_skill.update(service_skill_params)
        format.html { redirect_to @service_skill, notice: 'Service skill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_skills/1
  # DELETE /service_skills/1.json
  def destroy
    @service_skill.destroy
    respond_to do |format|
      format.html { redirect_to service_skills_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_skill
      @service_skill = ServiceSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_skill_params
    params.require(:service_skill).permit(:name, :my_skill_level, :service_id, :description, :display_order)
    end
end
