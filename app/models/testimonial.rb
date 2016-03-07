class Testimonial < ActiveRecord::Base
  validates_presence_of :comment, :author
end
