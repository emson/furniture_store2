
def default_select(attrib, default)
  return default if furnishing.nil?
  value = furnishing.send(attrib)
  return default if value.nil? || value.to_s.empty?
  value
end

ActiveAdmin.register Furnishing do

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  # permit_params(Furnishing.permitted)

  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  controller do
    def permitted_params
      params.permit!
    end
  end

  # show do
  #   h3 furnishing.name
  #   div do
  #     simple_format furnishing.description
  #   end
  # end
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
    f.input :furnishing_type, :as => :select, :collection => options_for_select(%w{armchair chair sofa}, default_select(:furnishing_type, 'armchair'))
    f.input :shape, :as => :select, :collection => options_for_select(%w{arun avon dart frome hamble lambourn otter parrett stour wylye}, default_select(:shape, 'arun'))
    f.input :seats, :as => :select, :collection => options_for_select(%w{1 2 2.5 3}, default_select(:seats, '1'))
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

