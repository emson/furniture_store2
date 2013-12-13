json.array!(@furnishings) do |furnishing|
  json.extract! furnishing, :name, :description, :dimensions_description, :img, :alter, :seats, :shape, :furnishing_type, :is_main
  json.url furnishing_url(furnishing, format: :json)
end
