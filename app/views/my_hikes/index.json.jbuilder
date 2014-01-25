json.array!(@my_hikes) do |my_hike|
  json.extract! my_hike, :id, :hike_name, :distance_in_km, :distance_category, :difficulty, :duration, :elevation_chart, :start_elevation, :max_elevation, :gain, :description, :district, :trail, :hike_start, :hike_end
  json.url my_hike_url(my_hike, format: :json)
end
