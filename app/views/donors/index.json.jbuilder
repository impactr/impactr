json.array!(@donors) do |donor|
  json.extract! donor, :id, :email, :name, :venmo_id
  json.url donor_url(donor, format: :json)
end
