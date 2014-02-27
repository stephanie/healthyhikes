// Distance between two coordinates.
var distance = function(lat1, long1, lat2, long2){
  console.log(lat1,long1,lat2,long2);

  var toRad = function(num) { return num * Math.PI / 180 }

  var R = 6371; // Radius of the earth in km
  var dLat = toRad(lat2-lat1); // Javascript functions in radians
  var dLon = toRad(long2-long1);
  var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
    Math.cos(toRad(lat1)) * Math.cos(toRad(lat2)) *
      Math.sin(dLon/2) * Math.sin(dLon/2);
  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
  return R * c;
}

var stations = [

  {station: 'Wan Chai',
  coord: {
    lat: 112.3,
    lng: 112.3
  }},
  {station: 'Causeway Bay',
  coord: {
    lat: 200.2,
    lng: 200.2
  }}
]

var myhike = [
  [112.3, 112.3],
  [130, 130],
  [140,140],
  [150,150],
  [160,160],
  [170,170],
  [180,180],
  [190,190],
  [200,200]
]

/**
 * Return the closest between one point and a set of points.
 * @param point the one point to compare
 * @param points the list of points
 */
var closest_point = function(point, points){
  var min = -1;
  var res = points[0];
  var dist;
  for(var i in points){
    if(points.hasOwnProperty(i)){
      dist = distance(point[0], point[1], points[i].coord.lat, points[i].coord.lng);
      console.log(points[i].station, dist);
      if(min === -1 || dist < min){
        min = dist;
        res = points[i].station;
      }
    }
  }
  console.log('closest', res);
  return res;
}

/**
 * Return the  coverage of stations depending on a hike
 * like, 20% Causeway bay, 80% Wan Chai
 * @param hike
 * @param stations
 */
var hike2station = function(hike, stations){
  var res = {}, station;

  // loop all the coordinates of the hike
  for(var i = 0 ; i < hike.length ; i++){
    // get the closest point
    station = closest_point(hike[i], stations);

    // Record one more hit for that station (or a first hit)
    if(res[station]){
      res[station] = res[station] + 1;
    } else {
      res[station] = 1;
    }
  }

  for(var j in res){
    if(res.hasOwnProperty(j)){ // Because JS will iterate over non key
      res[j] = res[j] / hike.length; // if Wan Chai had 2 hit out of 10 coordinates, it's 20%.
    }
  }

  return res;

}

console.log(hike2station(myhike, stations));