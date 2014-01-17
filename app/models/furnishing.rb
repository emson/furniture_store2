class Furnishing < ActiveRecord::Base

  def img
    return "missing-image.jpg" if self.imgs.nil?
    self.imgs.split(',').first
  end

end
