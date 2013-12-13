json.array!(@chairs) do |chair|
  json.extract! chair, :name, :description, :dimensions_description, :img, :alter, :seats, :shape, :type, :is_main
  json.url chair_url(chair, format: :json)
end
