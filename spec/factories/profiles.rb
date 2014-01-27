# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    full_name "MyString"
    phone "MyString"
    email_main "MyString"
    email_general "MyString"
    address "MyText"
    company "MyText"
    facebook "MyString"
    twitter "MyString"
    pintrest "MyString"
  end
end
