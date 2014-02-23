require 'mechanize'

class Aqi
  def self.scrape

    agent = Mechanize.new

    all_aqis = []
    all_urls = [
      'http://aqicn.org/city/hongkong/tapmun/',
      'http://aqicn.org/city/hongkong/central/western/',
      'http://aqicn.org/city/hongkong/central/',
      'http://aqicn.org/city/hongkong/causewaybay/',
      'http://aqicn.org/city/hongkong/mongkok/',
      'http://aqicn.org/city/hongkong/shamshuipo/',
      'http://aqicn.org/city/hongkong/kwaichung/',
      'http://aqicn.org/city/hongkong/taipo/',
      'http://aqicn.org/city/hongkong/shatin/',
      'http://aqicn.org/city/hongkong/eastern/',
      'http://aqicn.org/city/hongkong/tsuenwan/',
      'http://aqicn.org/city/hongkong/kwuntong/',
      'http://aqicn.org/city/hongkong/yuenlong/',
      'http://aqicn.org/city/hongkong/tuenmun/',
      'http://aqicn.org/city/hongkong/tungchung/',
    ]

    all_urls.each do |aqi_url|
      
      aqi_page = agent.get(aqi_url)

      area = aqi_page.at('#h1header b').text
      aqi = aqi_page.at('.aqivalue').text

      all_aqis.push({
        area: area, 
        aqi: ( 1 - (aqi.to_f/500) ) * 100, 
        aqi_url: aqi_url
      })
    
    end

    all_aqis

  end
end