require 'spec_helper'

describe "furnishings/show" do
  before(:each) do
    @furnishing = assign(:furnishing, stub_model(Furnishing,
      :name => "Name",
      :description => "MyText",
      :dimensions_description => "MyText",
      :img => "Img",
      :alter => "Alter",
      :seats => 1.5,
      :shape => "Shape",
      :furnishing_type => "Type",
      :is_main => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Img/)
    rendered.should match(/Alter/)
    rendered.should match(/1.5/)
    rendered.should match(/Shape/)
    rendered.should match(/Type/)
    rendered.should match(/false/)
  end
end
