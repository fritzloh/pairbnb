json.array!(@listings) do |listing|
  json.extract! listing, :id, :title, :property_type, :bedrooms, :country, :street_address, :city, :state, :zipcode
  json.url listing_url(listing, format: :json)
end
