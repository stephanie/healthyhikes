require 'spec_helper'

describe "my_hikes/index" do
  before(:each) do
    assign(:my_hikes, [
      stub_model(MyHike,
        :hike_name => "Hike Name",
        :distance_in_km => 1.5,
        :distance_category => "Distance Category",
        :difficulty => 1,
        :duration => 1.5,
        :elevation_chart => "Elevation Chart",
        :start_elevation => "Start Elevation",
        :max_elevation => "Max Elevation",
        :gain => "Gain",
        :description => "MyText",
        :district => "District",
        :trail => "Trail",
        :hike_start => "Hike Start",
        :hike_end => "Hike End"
      ),
      stub_model(MyHike,
        :hike_name => "Hike Name",
        :distance_in_km => 1.5,
        :distance_category => "Distance Category",
        :difficulty => 1,
        :duration => 1.5,
        :elevation_chart => "Elevation Chart",
        :start_elevation => "Start Elevation",
        :max_elevation => "Max Elevation",
        :gain => "Gain",
        :description => "MyText",
        :district => "District",
        :trail => "Trail",
        :hike_start => "Hike Start",
        :hike_end => "Hike End"
      )
    ])
  end

  it "renders a list of my_hikes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hike Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Distance Category".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Elevation Chart".to_s, :count => 2
    assert_select "tr>td", :text => "Start Elevation".to_s, :count => 2
    assert_select "tr>td", :text => "Max Elevation".to_s, :count => 2
    assert_select "tr>td", :text => "Gain".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "District".to_s, :count => 2
    assert_select "tr>td", :text => "Trail".to_s, :count => 2
    assert_select "tr>td", :text => "Hike Start".to_s, :count => 2
    assert_select "tr>td", :text => "Hike End".to_s, :count => 2
  end
end
