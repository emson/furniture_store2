json.array!(@arm_chairs) do |arm_chair|
  json.extract! arm_chair, :name, :description, :dimensions_description, :img, :alter, :seats, :shape, :type, :is_main
  json.url arm_chair_url(arm_chair, format: :json)
end
