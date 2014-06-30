json.array!(@items) do |item|
  json.extract! item, :id, :title, :city, :attendence, :followup_ownedby, :followup_status, :comments, :name, :company, :role, :emailaddress, :address, :phone
  json.url item_url(item, format: :json)
end
