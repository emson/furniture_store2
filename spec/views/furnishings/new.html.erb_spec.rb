require 'spec_helper'

describe "furnishings/new" do
  before(:each) do
    assign(:furnishing, stub_model(Furnishing,
      :name => "MyString",
      :description => "MyText",
      :dimensions_description => "MyText",
      :img => "MyString",
      :alter => "MyString",
      :seats => 1.5,
      :shape => "MyString",
      :furnishing_type => "",
      :is_main => false
    ).as_new_record)
  end

  it "renders new furnishing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", furnishings_path, "post" do
      assert_select "input#furnishing_name[name=?]", "furnishing[name]"
      assert_select "textarea#furnishing_description[name=?]", "furnishing[description]"
      assert_select "textarea#furnishing_dimensions_description[name=?]", "furnishing[dimensions_description]"
      assert_select "input#furnishing_img[name=?]", "furnishing[img]"
      assert_select "input#furnishing_alter[name=?]", "furnishing[alter]"
      assert_select "input#furnishing_seats[name=?]", "furnishing[seats]"
      assert_select "input#furnishing_shape[name=?]", "furnishing[shape]"
      assert_select "input#furnishing_furnishing_type[name=?]", "furnishing[furnishing_type]"
      assert_select "input#furnishing_is_main[name=?]", "furnishing[is_main]"
    end
  end
end
