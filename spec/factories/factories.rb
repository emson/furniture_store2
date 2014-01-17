
FactoryGirl.define do

  factory :furnishing do
    furnishing_type 'sofa'
    name 'Hamble'
    description 'All about the Avon'
    imgs 'image1.jpg, image2.jpg'
    seats 2.5
    shape 'hamble'
    is_main false
  end

end
