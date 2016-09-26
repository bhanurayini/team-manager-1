class StatRecordsController < ApplicationController
  before_action :set_stat_record, only: [:show, :edit, :update, :destroy]

  # GET /stat_records
  # GET /stat_records.json
  def index
    @stat_records = StatRecord.all
  end

  # GET /stat_records/1
  # GET /stat_records/1.json
  def show
  end

  # GET /stat_records/new
  def new
    @stat_record = StatRecord.new
  end

  # GET /stat_records/1/edit
  def edit
  end

  # POST /stat_records
  # POST /stat_records.json
  def create
    @stat_record = StatRecord.new(stat_record_params)

    respond_to do |format|
      if @stat_record.save
        format.html { redirect_to @stat_record, notice: 'Stat record was successfully created.' }
        format.json { render :show, status: :created, location: @stat_record }
      else
        format.html { render :new }
        format.json { render json: @stat_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stat_records/1
  # PATCH/PUT /stat_records/1.json
  def update
    respond_to do |format|
      if @stat_record.update(stat_record_params)
        format.html { redirect_to @stat_record, notice: 'Stat record was successfully updated.' }
        format.json { render :show, status: :ok, location: @stat_record }
      else
        format.html { render :edit }
        format.json { render json: @stat_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stat_records/1
  # DELETE /stat_records/1.json
  def destroy
    @stat_record.destroy
    respond_to do |format|
      format.html { redirect_to stat_records_url, notice: 'Stat record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stat_record
      @stat_record = StatRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stat_record_params
      params.require(:stat_record).permit(:record_value, :record_type, :record_date, :references)
    end
end
