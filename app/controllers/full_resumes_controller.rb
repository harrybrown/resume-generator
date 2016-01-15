class FullResumesController < ApplicationController
  before_action :set_full_resume, only: [:show, :edit, :update, :destroy]

  # GET /full_resumes
  # GET /full_resumes.json
  def index
    @full_resumes = FullResume.all
    @user = current_user
    @resume = Resume.find(@user.id)
    @schools = School.where(:user_id => @user.id)
    @works = Work.includes(:work_duties).where(:user_id => @user.id)
    @interests = Interest.where(:user_id => @user.id)
    @languages = Language.where(:user_id => @user.id)
    @miscellaneous = Miscellaneou.where(:user_id => @user.id)
    @skills = Skill.where(:user_id => @user.id)
  end

  # GET /full_resumes/1
  # GET /full_resumes/1.json
  def show
  end

  # GET /full_resumes/new
  def new
    @full_resume = FullResume.new
  end

  # GET /full_resumes/1/edit
  def edit
  end

  # POST /full_resumes
  # POST /full_resumes.json
  def create
    @full_resume = FullResume.new(full_resume_params)

    respond_to do |format|
      if @full_resume.save
        format.html { redirect_to @full_resume, notice: 'Full resume was successfully created.' }
        format.json { render action: 'show', status: :created, location: @full_resume }
      else
        format.html { render action: 'new' }
        format.json { render json: @full_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /full_resumes/1
  # PATCH/PUT /full_resumes/1.json
  def update
    respond_to do |format|
      if @full_resume.update(full_resume_params)
        format.html { redirect_to @full_resume, notice: 'Full resume was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @full_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /full_resumes/1
  # DELETE /full_resumes/1.json
  def destroy
    @full_resume.destroy
    respond_to do |format|
      format.html { redirect_to full_resumes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_full_resume
      @full_resume = FullResume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def full_resume_params
      params[:full_resume]
    end
end
