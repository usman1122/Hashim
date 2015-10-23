json.array!(@service_reports) do |service_report|
  json.extract! service_report, :id, :ITM, :comissining_reports
  json.url service_report_url(service_report, format: :json)
end
