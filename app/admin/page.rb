ActiveAdmin.register Page do

  # fix access page with friendly_id
  controller do
    def permitted_params
      params.permit!
    end
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
      row :image_side
      row :updated_at
      row :created_at
    end
  end

end
