class TeamHasCoachesController < ApplicationController
  before_action :set_team_has_coach, only: [:show, :edit, :update, :destroy]

  # GET /team_has_coaches
  # GET /team_has_coaches.json
  def index
    @team_has_coaches = TeamHasCoach.all
  end

  # GET /team_has_coaches/1
  # GET /team_has_coaches/1.json
  def show
  end

  # GET /team_has_coaches/new
  def new
    @team_has_coach = TeamHasCoach.new
  end

  # GET /team_has_coaches/1/edit
  def edit
  end

  # POST /team_has_coaches
  # POST /team_has_coaches.json
  def create
    @team_has_coach = TeamHasCoach.new(team_has_coach_params)

    respond_to do |format|
      if @team_has_coach.save
        format.html { redirect_to @team_has_coach, notice: 'Team has coach was successfully created.' }
        format.json { render :show, status: :created, location: @team_has_coach }
      else
        format.html { render :new }
        format.json { render json: @team_has_coach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_has_coaches/1
  # PATCH/PUT /team_has_coaches/1.json
  def update
    respond_to do |format|
      if @team_has_coach.update(team_has_coach_params)
        format.html { redirect_to @team_has_coach, notice: 'Team has coach was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_has_coach }
      else
        format.html { render :edit }
        format.json { render json: @team_has_coach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_has_coaches/1
  # DELETE /team_has_coaches/1.json
  def destroy
    @team_has_coach.destroy
    respond_to do |format|
      format.html { redirect_to team_has_coaches_url, notice: 'Team has coach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_has_coach
      @team_has_coach = TeamHasCoach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_has_coach_params
      params.require(:team_has_coach).permit(:coach_type, :person_id, :team_id)
    end
end
