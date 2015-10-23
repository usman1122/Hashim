class AuditReportsController < ApplicationController
  before_action :set_audit_report, only: [:show, :edit, :update, :destroy]

  # GET /audit_reports
  # GET /audit_reports.json
  def index
    @audit_reports = AuditReport.all
  end

  # GET /audit_reports/1
  # GET /audit_reports/1.json
  def show
  end

  # GET /audit_reports/new
  def new
    @audit_report = AuditReport.new
  end

  # GET /audit_reports/1/edit
  def edit
  end

  # POST /audit_reports
  # POST /audit_reports.json
  def create
    @audit_report = AuditReport.new(audit_report_params)

    respond_to do |format|
      if @audit_report.save
        format.html { redirect_to @audit_report, notice: 'Audit report was successfully created.' }
        format.json { render :show, status: :created, location: @audit_report }
      else
        format.html { render :new }
        format.json { render json: @audit_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audit_reports/1
  # PATCH/PUT /audit_reports/1.json
  def update
    respond_to do |format|
      if @audit_report.update(audit_report_params)
        format.html { redirect_to @audit_report, notice: 'Audit report was successfully updated.' }
        format.json { render :show, status: :ok, location: @audit_report }
      else
        format.html { render :edit }
        format.json { render json: @audit_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audit_reports/1
  # DELETE /audit_reports/1.json
  def destroy
    @audit_report.destroy
    respond_to do |format|
      format.html { redirect_to audit_reports_url, notice: 'Audit report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audit_report
      @audit_report = AuditReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audit_report_params
      params.require(:audit_report).permit(:fire_alarm_system, :fire_pump, :fire_extenguisher, :fire_hose_cabin, :automatic_sprinkle_system, :fire_susspension_system, :restaurant_fire_susspension, :fire_hybrands)
    end
end
