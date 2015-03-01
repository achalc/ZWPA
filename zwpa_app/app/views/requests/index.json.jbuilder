json.array!(@requests) do |request|
  json.extract! request, :id, :customer_id, :contact_firstname, :contact_lastname, :title, :email, :phone, :street_address, :city, :state, :date, :Note, :request_id, :photo, :description
  json.url request_url(request, format: :json)
end
