json.array!(@wastes) do |waste|
  json.extract! waste, :id, :audit_id, :note, :weight, :material_type
  json.url waste_url(waste, format: :json)
end
