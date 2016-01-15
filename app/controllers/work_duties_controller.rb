class WorkDutiesController < ApplicationController
  before_action :set_work_duty, only: [:show, :edit, :update, :destroy]

  # GET /work_duties
  # GET /work_duties.json
  def index
    @work_duties = WorkDuty.all
  end

  # GET /work_duties/1
  # GET /work_duties/1.json
  def show
  end

  # GET /work_duties/new
  def new
    binding.pry
    @work_duty = WorkDuty.new(params[:work_duty])
      binding.pry
  end

  # GET /work_duties/1/edit
  def edit
  end

  # POST /work_duties
  # POST /work_duties.json
  def create
    @work_duty = WorkDuty.new(work_duty_params)

    respond_to do |format|
      if @work_duty.save
        format.html { redirect_to @work_duty, notice: 'Work duty was successfully created.' }
        format.json { render action: 'show', status: :created, location: @work_duty }
      else
        format.html { render action: 'new' }
        format.json { render json: @work_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_duties/1
  # PATCH/PUT /work_duties/1.json
  def update
    respond_to do |format|
      if @work_duty.update(work_duty_params)
        format.html { redirect_to @work_duty, notice: 'Work duty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @work_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_duties/1
  # DELETE /work_duties/1.json
  def destroy
    @work_duty.destroy
    respond_to do |format|
      format.html { redirect_to work_duties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_duty
      @work_duty = WorkDuty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_duty_params
      params.require(:work_duty).permit(:work_id, :task, :description)
    end
end
