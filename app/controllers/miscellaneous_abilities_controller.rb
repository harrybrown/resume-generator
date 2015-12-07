class MiscellaneousAbilitiesController < ApplicationController
  before_action :set_miscellaneous_ability, only: [:show, :edit, :update, :destroy]

  # GET /miscellaneous_abilities
  # GET /miscellaneous_abilities.json
  def index
    @miscellaneous_abilities = MiscellaneousAbility.all
  end

  # GET /miscellaneous_abilities/1
  # GET /miscellaneous_abilities/1.json
  def show
  end

  # GET /miscellaneous_abilities/new
  def new
    @miscellaneous_ability = MiscellaneousAbility.new
  end

  # GET /miscellaneous_abilities/1/edit
  def edit
  end

  # POST /miscellaneous_abilities
  # POST /miscellaneous_abilities.json
  def create
    @miscellaneous_ability = MiscellaneousAbility.new(miscellaneous_ability_params)

    respond_to do |format|
      if @miscellaneous_ability.save
        format.html { redirect_to @miscellaneous_ability, notice: 'Miscellaneous ability was successfully created.' }
        format.json { render action: 'show', status: :created, location: @miscellaneous_ability }
      else
        format.html { render action: 'new' }
        format.json { render json: @miscellaneous_ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miscellaneous_abilities/1
  # PATCH/PUT /miscellaneous_abilities/1.json
  def update
    respond_to do |format|
      if @miscellaneous_ability.update(miscellaneous_ability_params)
        format.html { redirect_to @miscellaneous_ability, notice: 'Miscellaneous ability was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @miscellaneous_ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miscellaneous_abilities/1
  # DELETE /miscellaneous_abilities/1.json
  def destroy
    @miscellaneous_ability.destroy
    respond_to do |format|
      format.html { redirect_to miscellaneous_abilities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miscellaneous_ability
      @miscellaneous_ability = MiscellaneousAbility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miscellaneous_ability_params
      params[:miscellaneous_ability]
    end
end
