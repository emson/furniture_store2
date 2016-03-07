module Selectable
  extend ActiveSupport::Concern

  def select_random(model, size=3)
    model.all.shuffle[0, size] || []
  end

end
