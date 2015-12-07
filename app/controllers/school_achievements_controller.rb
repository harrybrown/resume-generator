class SchoolAchievementsController < ApplicationController
  before_action :set_school_achievement, only: [:show, :edit, :update, :destroy]

  # GET /school_achievements
  # GET /school_achievements.json
  def index
    @school_achievements = SchoolAchievement.all
  end

  # GET /school_achievements/1
  # GET /school_achievements/1.json
  def show
  end

  # GET /school_achievements/new
  def new
    @school_achievement = SchoolAchievement.new
  end

  # GET /school_achievements/1/edit
  def edit
  end

  # POST /school_achievements
  # POST /school_achievements.json
  def create
    @school_achievement = SchoolAchievement.new(school_achievement_params)

    respond_to do |format|
      if @school_achievement.save
        format.html { redirect_to @school_achievement, notice: 'School achievement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @school_achievement }
      else
        format.html { render action: 'new' }
        format.json { render json: @school_achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_achievements/1
  # PATCH/PUT /school_achievements/1.json
  def update
    respond_to do |format|
      if @school_achievement.update(school_achievement_params)
        format.html { redirect_to @school_achievement, notice: 'School achievement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @school_achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_achievements/1
  # DELETE /school_achievements/1.json
  def destroy
    @school_achievement.destroy
    respond_to do |format|
      format.html { redirect_to school_achievements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_achievement
      @school_achievement = SchoolAchievement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_achievement_params
      params.require(:school_achievement).permit(:school_id, :achievement, :description)
    end
end
