json.array!(@sofas) do |sofa|
  json.extract! sofa, :name, :description, :dimensions_description, :img, :alter, :seats, :shape, :type, :is_main
  json.url sofa_url(sofa, format: :json)
end
