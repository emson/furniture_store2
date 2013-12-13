require 'spec_helper'

describe "furnishings/index" do
  before(:each) do
    assign(:furnishings, [
      stub_model(Furnishing,
        :name => "Name",
        :description => "MyText",
        :dimensions_description => "MyText",
        :img => "Img",
        :alter => "Alter",
        :seats => 1.5,
        :shape => "Shape",
        :furnishing_type => "Type",
        :is_main => false
      ),
      stub_model(Furnishing,
        :name => "Name",
        :description => "MyText",
        :dimensions_description => "MyText",
        :img => "Img",
        :alter => "Alter",
        :seats => 1.5,
        :shape => "Shape",
        :furnishing_type => "Type",
        :is_main => false
      )
    ])
  end

  it "renders a list of furnishings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Img".to_s, :count => 2
    assert_select "tr>td", :text => "Alter".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Shape".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
