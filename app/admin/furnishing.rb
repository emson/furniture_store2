
def default_select(furnishing, attrib, default)
  return default if furnishing.nil?
  value = furnishing.send(attrib)
  return default if value.nil? || value.to_s.gsub(/[\s|\t]/,'').empty?
  value
end

def default_select_seats(furnishing, attrib, default)
  # return default if furnishing.nil?
  # value = furnishing.seats
  # puts "=========== #{value}"
  # return default if value.nil? || value.to_s.gsub(/[\s|\t]/,'').empty?
  # value
  value = furnishing.seats
  puts "=========== #{value}"
  value.to_s
end

ActiveAdmin.register Furnishing do

  controller do
    def permitted_params
      params.permit!
    end
  end

  show do |furnishing|
    attributes_table do
      row :id
      row :furnishing_type
      row :shape
      row :seats
      row :name
      row :description
      row :back
      row :seat
      row :image_main
      row :image_rollover
      row :image_dimensions
      row :image_other
      row :tag_list
      row :is_main
      row :created_at
      row :updated_at
  end
end

form do |f|
  f.inputs "Details" do
    f.input :furnishing_type, :as => :select, :collection => options_for_select(%w{armchair chair sofa stool}, default_select(furnishing, :furnishing_type, 'armchair'))
    f.input :shape, :as => :select, :collection => options_for_select(%w{arun avon dart frome hamble lambourn otter parrett stour stool wylye}, default_select(furnishing, :shape, 'arun'))
    f.input :seats, :as => :select, :collection => options_for_select(%w{1.0 2.0 2.5 3.0}, default_select(furnishing, :seats, '1.0'))
    f.input :name
    f.input :description
    f.input :back
    f.input :seat
    f.input :image_main
    f.input :image_rollover
    f.input :image_dimensions
    f.input :image_other
    f.input :tag_list
    f.input :is_main
  end
  f.actions
end

end

