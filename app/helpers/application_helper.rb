module ApplicationHelper

  def convert_to_markdown(text)
    MARKDOWN.render(text)
  end

end
