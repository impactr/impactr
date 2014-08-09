json.array!(@organizations) do |organization|
  json.extract! organization, :id, :venmo_id, :name
  json.url organization_url(organization, format: :json)
end
