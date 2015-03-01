json.array!(@audits) do |audit|
  json.extract! audit, :id, :request_id, :date, :origin, :time_period, :dumpster_type
  json.url audit_url(audit, format: :json)
end
