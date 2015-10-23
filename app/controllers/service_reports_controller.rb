class ServiceReportsController < ApplicationController
  before_action :set_service_report, only: [:show, :edit, :update, :destroy]

  # GET /service_reports
  # GET /service_reports.json
  def index
    @service_reports = ServiceReport.all
  end

  # GET /service_reports/1
  # GET /service_reports/1.json
  def show
  end

  # GET /service_reports/new
  def new
    @service_report = ServiceReport.new
  end

  # GET /service_reports/1/edit
  def edit
  end

  # POST /service_reports
  # POST /service_reports.json
  def create
    @service_report = ServiceReport.new(service_report_params)

    respond_to do |format|
      if @service_report.save
        format.html { redirect_to @service_report, notice: 'Service report was successfully created.' }
        format.json { render :show, status: :created, location: @service_report }
      else
        format.html { render :new }
        format.json { render json: @service_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_reports/1
  # PATCH/PUT /service_reports/1.json
  def update
    respond_to do |format|
      if @service_report.update(service_report_params)
        format.html { redirect_to @service_report, notice: 'Service report was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_report }
      else
        format.html { render :edit }
        format.json { render json: @service_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_reports/1
  # DELETE /service_reports/1.json
  def destroy
    @service_report.destroy
    respond_to do |format|
      format.html { redirect_to service_reports_url, notice: 'Service report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_report
      @service_report = ServiceReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_report_params
      params.require(:service_report).permit(:ITM, :comissining_reports)
    end
end
