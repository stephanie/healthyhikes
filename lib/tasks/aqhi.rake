require 'mechanize'

namespace :healthyhikes do
  desc 'GET AQHI DATA (from DataOne)'
  task get_aqhi_data: :environment do
    agent = Mechanize.new
    xml = agent.get('http://www.aqhi.gov.hk/epd/ddata/html/out/aqhi_ind_rss_Eng.xml')
    xml.search('//item/title').each do |node|
      dist = node.to_s.split('<title>')[1].split('</title>')[0].split(':').each { |n| n.strip! }
      @district = District.find_or_create_by area: dist[0]
      @district.aqhi = dist[1]
      @district.aqhi_health_risk = dist[2]
      @district.save
    end
  end
end