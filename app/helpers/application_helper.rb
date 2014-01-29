module ApplicationHelper

  def convert_to_markdown(text)
    MARKDOWN.render(text)
  end

  def list_tags
    ActsAsTaggableOn::Tag.includes(:taggings)
  end

  def path_for(furnishing)
    mthd = "#{furnishing.furnishing_type}_path".to_s
    send(mthd, furnishing)
  end

  def nav_link(text, link)
    opts = {}
    opts[:class] = 'active' if current_page?(link)
    content_tag(:li, opts) do
      link_to( text, link)
    end
  end

end

