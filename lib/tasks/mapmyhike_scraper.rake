namespace :healthyhikes do
  desc "GET MAPMYHIKE DATA"
    task get_mapmyhike_data: :environment do
      require "#{Rails.root}/lib/mapmyhike"
      all_my_hikes = Mapmyhike.scrape
      all_my_hikes.each do |hike|
        @hike = MyHike.find_by(mapmyhike_url: hike[:mapmyhike_url])
        if @hike 
          @hike.update(hike)
        else
          MyHike.create(hike)
        end
      end
    end
end