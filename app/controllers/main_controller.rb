class MainController < ApplicationController

  # carousel/IMG_1927.jpg
  # carousel/IMG_0261.jpg
  # carousel/IMG_1979.jpg
  # carousel/IMG_2046.jpg
  # carousel/IMG_2071.jpg
  def index
    @carousels    = Carousel.order(:order => :asc)
    @testimonials = select_random(Testimonial)
  end

end
