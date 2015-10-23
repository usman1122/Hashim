require 'test_helper'

class AuditReportsControllerTest < ActionController::TestCase
  setup do
    @audit_report = audit_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audit_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audit_report" do
    assert_difference('AuditReport.count') do
      post :create, audit_report: { automatic_sprinkle_system: @audit_report.automatic_sprinkle_system, fire_alarm_system: @audit_report.fire_alarm_system, fire_extenguisher: @audit_report.fire_extenguisher, fire_hose_cabin: @audit_report.fire_hose_cabin, fire_hybrands: @audit_report.fire_hybrands, fire_pump: @audit_report.fire_pump, fire_susspension_system: @audit_report.fire_susspension_system, restaurant_fire_susspension: @audit_report.restaurant_fire_susspension }
    end

    assert_redirected_to audit_report_path(assigns(:audit_report))
  end

  test "should show audit_report" do
    get :show, id: @audit_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audit_report
    assert_response :success
  end

  test "should update audit_report" do
    patch :update, id: @audit_report, audit_report: { automatic_sprinkle_system: @audit_report.automatic_sprinkle_system, fire_alarm_system: @audit_report.fire_alarm_system, fire_extenguisher: @audit_report.fire_extenguisher, fire_hose_cabin: @audit_report.fire_hose_cabin, fire_hybrands: @audit_report.fire_hybrands, fire_pump: @audit_report.fire_pump, fire_susspension_system: @audit_report.fire_susspension_system, restaurant_fire_susspension: @audit_report.restaurant_fire_susspension }
    assert_redirected_to audit_report_path(assigns(:audit_report))
  end

  test "should destroy audit_report" do
    assert_difference('AuditReport.count', -1) do
      delete :destroy, id: @audit_report
    end

    assert_redirected_to audit_reports_path
  end
end
