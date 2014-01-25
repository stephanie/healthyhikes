require 'mechanize'

class Mapmyhike
  def self.scrape

    agent = Mechanize.new

    all_my_hikes = []
    all_urls = [
      'http://www.mapmyhike.com/hk/kowloon/dragons-back-route-175785290',
      'http://www.mapmyhike.com/hk/yung-shue-wan/hk-lantau-giant-buddha-and-climbing-lant-route-57512082',
      'http://www.mapmyhike.com/hk/kowloon/7-18km-hike-on-07-07-2013-route-241056795',
      'http://www.mapmyhike.com/hk/kowloon/wilson-trail-stage-3-route-24243666',
      'http://www.mapmyhike.com/hk/hong-kong/3-9-km-hku-to-victoria-peak-route-174333746',
      'http://www.mapmyhike.com/hk/tsuen-wan/hiking-sunset-peak-tung-chung-route-153954425',
      'http://www.mapmyhike.com/hk/kowloon/maclehose-trail-stage3-route-20074270',
      'http://www.mapmyhike.com/hk/yung-shue-wan/3-95km-hike-on-14-7-13-route-267311945',
      'http://www.mapmyhike.com/hk/yung-shue-wan/7-28-km-yung-shue-to-sok-kwu-route-115572893',
      'http://www.mapmyhike.com/hk/hong-kong/copy-of-twin-peaks-route-25001850']

    #dragon's back hike

    all_urls.each do |h|
      
      hike_page = agent.get(h)

      hike_name = hike_page.at('#page_content h1').text
      distance_in_km = hike_page.at('.number').text
      climb = hike_page.at('.float_left span').text
      duration = hike_page.at('.best_time a').text if hike_page.at('.best_time a')

      all_my_hikes.push({
        hike_name: hike_name, 
        distance_in_km: distance_in_km, 
        climb: climb, 
        duration: duration
      })
    
    end

    all_my_hikes

  end
end