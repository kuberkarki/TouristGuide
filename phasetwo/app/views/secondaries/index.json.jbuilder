json.array!(@secondaries) do |secondary|
  json.extract! secondary, :id, :name, :description, :height, :width, :depth, :distance_from, :distance_end
  json.url secondary_url(secondary, format: :json)
end
