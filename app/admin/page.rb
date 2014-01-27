ActiveAdmin.register Page do

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  permit_params(Page.permitted)
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  # fix access page with friendly_id
  controller do
    def resource
      Page.friendly.find(params[:id])
    end
  end

  # custom show page using markdown
  show do |page|
    attributes_table do
      row :id
      row :slug
      row :title
      row :content do
        # simple_format page.content
        raw(MARKDOWN.render(page.content))
      end
      row :updated_at
      row :created_at
    end
  end

end
