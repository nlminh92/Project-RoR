json.array!(@products) do |product|
  json.extract! product, :name_products, :status, :description, :image, :gender, :type, :type_sell, :code, :season, :date_availability, :country, :price, :size, :discount, :variants, :on_sale
  json.url collection_url(product, format: :json)
end
