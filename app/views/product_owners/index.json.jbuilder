json.array!(@product_owners) do |product_owner|
  json.extract! product_owner, :id
  json.url product_owner_url(product_owner, format: :json)
end
