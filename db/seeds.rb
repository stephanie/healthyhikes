# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

my_hikes_list = [
  [ "http://www.mapmyhike.com/hk/kowloon/dragons-back-route-175785290",
    "https://maps.google.com/maps?q=http:%2F%2Fwww.mapmyfitness.com%2Fws%2F4p%2Froutes%2Fget_route_kml%3Fconsumer_key%3Db513571b80685c74fa95b7755d916c24048889df4%26route_id=175785290%26display_distance_marker_flag%3D1%26display_custom_marker_flag%3D1%26last_updated=3&output=embed",
    "Dragon’s Back (Hong Kong Trail)",
    "Short",
    "10"
  ],
  [ "http://www.mapmyhike.com/hk/yung-shue-wan/hk-lantau-giant-buddha-and-climbing-lant-route-57512082",
    "https://maps.google.com/maps?q=http:%2F%2Fwww.mapmyfitness.com%2Fws%2F4p%2Froutes%2Fget_route_kml%3Fconsumer_key%3Db513571b80685c74fa95b7755d916c24048889df4%26route_id=57512082%26display_distance_marker_flag%3D1%26display_custom_marker_flag%3D1%26last_updated=3&output=embed",
    "Big Buddha to the Road (Lantau Trail)",
    "Medium",
    "15"
  ],
  [ "http://www.mapmyhike.com/hk/kowloon/7-18km-hike-on-07-07-2013-route-241056795",
    "https://maps.google.com/maps?q=http:%2F%2Fwww.mapmyfitness.com%2Fws%2F4p%2Froutes%2Fget_route_kml%3Fconsumer_key%3Db513571b80685c74fa95b7755d916c24048889df4%26route_id=241056795%26display_distance_marker_flag%3D1%26display_custom_marker_flag%3D1%26last_updated=3&output=embed",
    "Lion Rock (Maclehose trail)",
    "Medium",
    "9",
  ],
  [ "http://www.mapmyhike.com/hk/kowloon/wilson-trail-stage-3-route-24243666",
    "https://maps.google.com/maps?q=http:%2F%2Fwww.mapmyfitness.com%2Fws%2F4p%2Froutes%2Fget_route_kml%3Fconsumer_key%3Db513571b80685c74fa95b7755d916c24048889df4%26route_id=24243666%26display_distance_marker_flag%3D1%26display_custom_marker_flag%3D1%26last_updated=3&output=embed",
    "Wilson Trail Stage 3",
    "Medium",
    "12",
  ],
  [ "http://www.mapmyhike.com/hk/hong-kong/3-9-km-hku-to-victoria-peak-route-174333746",
    "https://maps.google.com/maps?q=http:%2F%2Fwww.mapmyfitness.com%2Fws%2F4p%2Froutes%2Fget_route_kml%3Fconsumer_key%3Db513571b80685c74fa95b7755d916c24048889df4%26route_id=174333746%26display_distance_marker_flag%3D1%26display_custom_marker_flag%3D1%26last_updated=3&output=embed",
    "Pok Fu Lam to Victoria Peak (Hong Kong Trail)",
    "Short",
    "2",
  ],
  [ "http://www.mapmyhike.com/hk/tsuen-wan/hiking-sunset-peak-tung-chung-route-153954425",
    "https://maps.google.com/maps?q=http:%2F%2Fwww.mapmyfitness.com%2Fws%2F4p%2Froutes%2Fget_route_kml%3Fconsumer_key%3Db513571b80685c74fa95b7755d916c24048889df4%26route_id=153954425%26display_distance_marker_flag%3D1%26display_custom_marker_flag%3D1%26last_updated=3&output=embed",
    "Sunset Peak (Lantau trail)",
    "Long",
    "15",
  ],
  [ "http://www.mapmyhike.com/hk/kowloon/maclehose-trail-stage3-route-20074270",
    "https://maps.google.com/maps?q=http:%2F%2Fwww.mapmyfitness.com%2Fws%2F4p%2Froutes%2Fget_route_kml%3Fconsumer_key%3Db513571b80685c74fa95b7755d916c24048889df4%26route_id=20074270%26display_distance_marker_flag%3D1%26display_custom_marker_flag%3D1%26last_updated=3&output=embed",
    "Sai Kung (Maclehose Stage 3)",
    "Long",
    "1",
  ],
  [ "http://www.mapmyhike.com/hk/yung-shue-wan/3-95km-hike-on-14-7-13-route-267311945",
    "https://maps.google.com/maps?q=http:%2F%2Fwww.mapmyfitness.com%2Fws%2F4p%2Froutes%2Fget_route_kml%3Fconsumer_key%3Db513571b80685c74fa95b7755d916c24048889df4%26route_id=267311945%26display_distance_marker_flag%3D1%26display_custom_marker_flag%3D1%26last_updated=3&output=embed",
    "Shek Pik to Tai O (Lantau Trail)",
    "Short",
    "15",
  ],
  [ "http://www.mapmyhike.com/hk/yung-shue-wan/7-28-km-yung-shue-to-sok-kwu-route-115572893",
    "https://maps.google.com/maps?q=http:%2F%2Fwww.mapmyfitness.com%2Fws%2F4p%2Froutes%2Fget_route_kml%3Fconsumer_key%3Db513571b80685c74fa95b7755d916c24048889df4%26route_id=115572893%26display_distance_marker_flag%3D1%26display_custom_marker_flag%3D1%26last_updated=3&output=embed",
    "Yung Shue Wan to Sok Kwu Wan (Lamma) ",
    "Medium",
    "2",
  ],
  [ "http://www.mapmyhike.com/hk/hong-kong/copy-of-twin-peaks-route-25001850",
    "https://maps.google.com/maps?q=http:%2F%2Fwww.mapmyfitness.com%2Fws%2F4p%2Froutes%2Fget_route_kml%3Fconsumer_key%3Db513571b80685c74fa95b7755d916c24048889df4%26route_id=25001850%26display_distance_marker_flag%3D1%26display_custom_marker_flag%3D1%26last_updated=3&output=embed",
    "Twin Peaks",
    "Short",
    "4",
  ]
]

my_hikes_list.each do |mapmyhike_url, map_url, trail, distance_category, district|
  MyHike.create( mapmyhike_url: mapmyhike_url, map_url: map_url, trail: trail, distance_category: distance_category, parent_id: district )
end


#parent_id, districts

# 1 'http://aqicn.org/city/hongkong/tapmun/',
# 2 'http://aqicn.org/city/hongkong/central/western/',
# 3 'http://aqicn.org/city/hongkong/central/',
# 4 'http://aqicn.org/city/hongkong/causewaybay/',
# 5 'http://aqicn.org/city/hongkong/mongkok/',
# 6 'http://aqicn.org/city/hongkong/shamshuipo/',
# 7 'http://aqicn.org/city/hongkong/kwaichung/',
# 8 'http://aqicn.org/city/hongkong/taipo/',
# 9 'http://aqicn.org/city/hongkong/shatin/',
# 10 'http://aqicn.org/city/hongkong/eastern/',
# 11 'http://aqicn.org/city/hongkong/tsuenwan/',
# 12 'http://aqicn.org/city/hongkong/kwuntong/',
# 13 'http://aqicn.org/city/hongkong/yuenlong/',
# 14 'http://aqicn.org/city/hongkong/tuenmun/',
# 15 'http://aqicn.org/city/hongkong/tungchung/',


