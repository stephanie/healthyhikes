namespace :healthyhikes do
  desc "GET AQI DATA"
    task get_aqi_data: :environment do
      require "#{Rails.root}/lib/aqi"
      all_aqis = Aqi.scrape
      all_aqis.each do |district|
        @district = District.find_by(aqi_url: district[:aqi_url])
        if @district 
          @district.update(district)
        else
          District.create(district)
        end
      end
    end
end