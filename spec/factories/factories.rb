
FactoryGirl.define do

  factory :furnishing do
    furnishing_type 'sofa'
    seats 2.5
    shape 'hamble'
    name 'Hamble'
    description 'All about the Hamble'
    image_main 'image_main.jpg'
    image_rollover 'image_rollover.jpg'
    image_dimensions 'image_dimensions.jpg'
    image_other 'image_other.jpg'
    back 'About the back'
    seat 'About the seat'
    is_main false
  end

end
