require 'spec_helper'

describe "my_hikes/new" do
  before(:each) do
    assign(:my_hike, stub_model(MyHike,
      :hike_name => "MyString",
      :distance_in_km => 1.5,
      :distance_category => "MyString",
      :difficulty => 1,
      :duration => 1.5,
      :elevation_chart => "MyString",
      :start_elevation => "MyString",
      :max_elevation => "MyString",
      :gain => "MyString",
      :description => "MyText",
      :district => "MyString",
      :trail => "MyString",
      :hike_start => "MyString",
      :hike_end => "MyString"
    ).as_new_record)
  end

  it "renders new my_hike form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", my_hikes_path, "post" do
      assert_select "input#my_hike_hike_name[name=?]", "my_hike[hike_name]"
      assert_select "input#my_hike_distance_in_km[name=?]", "my_hike[distance_in_km]"
      assert_select "input#my_hike_distance_category[name=?]", "my_hike[distance_category]"
      assert_select "input#my_hike_difficulty[name=?]", "my_hike[difficulty]"
      assert_select "input#my_hike_duration[name=?]", "my_hike[duration]"
      assert_select "input#my_hike_elevation_chart[name=?]", "my_hike[elevation_chart]"
      assert_select "input#my_hike_start_elevation[name=?]", "my_hike[start_elevation]"
      assert_select "input#my_hike_max_elevation[name=?]", "my_hike[max_elevation]"
      assert_select "input#my_hike_gain[name=?]", "my_hike[gain]"
      assert_select "textarea#my_hike_description[name=?]", "my_hike[description]"
      assert_select "input#my_hike_district[name=?]", "my_hike[district]"
      assert_select "input#my_hike_trail[name=?]", "my_hike[trail]"
      assert_select "input#my_hike_hike_start[name=?]", "my_hike[hike_start]"
      assert_select "input#my_hike_hike_end[name=?]", "my_hike[hike_end]"
    end
  end
end
