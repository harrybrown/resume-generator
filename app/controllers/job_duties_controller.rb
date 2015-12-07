class JobDutiesController < ApplicationController
  before_action :set_job_duty, only: [:show, :edit, :update, :destroy]

  # GET /job_duties
  # GET /job_duties.json
  def index
    @job_duties = JobDuty.all
  end

  # GET /job_duties/1
  # GET /job_duties/1.json
  def show
  end

  # GET /job_duties/new
  def new
    @job_duty = JobDuty.new
  end

  # GET /job_duties/1/edit
  def edit
  end

  # POST /job_duties
  # POST /job_duties.json
  def create
    @job_duty = JobDuty.new(job_duty_params)

    respond_to do |format|
      if @job_duty.save
        format.html { redirect_to @job_duty, notice: 'Job duty was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job_duty }
      else
        format.html { render action: 'new' }
        format.json { render json: @job_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_duties/1
  # PATCH/PUT /job_duties/1.json
  def update
    respond_to do |format|
      if @job_duty.update(job_duty_params)
        format.html { redirect_to @job_duty, notice: 'Job duty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_duties/1
  # DELETE /job_duties/1.json
  def destroy
    @job_duty.destroy
    respond_to do |format|
      format.html { redirect_to job_duties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_duty
      @job_duty = JobDuty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_duty_params
    params.require(:job_duty).permit(:description, :display_order, :job_id)
    end
end
