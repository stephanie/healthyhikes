require 'spec_helper'

describe "my_hikes/show" do
  before(:each) do
    @my_hike = assign(:my_hike, stub_model(MyHike,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hike Name/)
    rendered.should match(/1.5/)
    rendered.should match(/Distance Category/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/Elevation Chart/)
    rendered.should match(/Start Elevation/)
    rendered.should match(/Max Elevation/)
    rendered.should match(/Gain/)
    rendered.should match(/MyText/)
    rendered.should match(/District/)
    rendered.should match(/Trail/)
    rendered.should match(/Hike Start/)
    rendered.should match(/Hike End/)
  end
end
