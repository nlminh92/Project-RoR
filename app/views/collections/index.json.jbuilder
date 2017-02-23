json.array!(@collections) do |collection|
  json.extract! collection, :name_collections, :date_availability, :description, :image
  json.url collection_url(collection, format: :json)
end
