json.array!(@donations) do |donation|
  json.extract! donation, :id, :amount, :campaign
  json.url donation_url(donation, format: :json)
end
