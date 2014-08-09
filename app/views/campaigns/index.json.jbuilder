json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :name, :organization_id, :unit
  json.url campaign_url(campaign, format: :json)
end
