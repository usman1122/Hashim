json.array!(@audit_reports) do |audit_report|
  json.extract! audit_report, :id, :fire_alarm_system, :fire_pump, :fire_extenguisher, :fire_hose_cabin, :automatic_sprinkle_system, :fire_susspension_system, :restaurant_fire_susspension, :fire_hybrands
  json.url audit_report_url(audit_report, format: :json)
end
