function Queue() {
  this._queue = [];
  this._scope = Array.prototype.slice.call(arguments);
  return this;
}

Queue.prototype.add = function(fn) {
  this._queue.push(fn);
  return this;
}


Queue.prototype.run = function(cb) {
  var queue = this._queue;
  var scope = this._scope;
  var next = function(error) {
    if (error !== void 0) return cb(error);
    var task = queue.shift();  
    if (!task) return cb();
    var s = scope.slice(0);
    s.push((function(){
      var executed = false;
      return function(error) {
        if (executed) throw new Error('callback can\'t be executed twice');
        executed = true;
        next(error);
      }
    })());
    task.apply(task, s);
  }
    next();
}

Queue.prototype.constructor = Queue;


function freshnessfactor(aqi){
  return Math.floor(( 1 - (parseInt(aqi)/500) ) * 100); 
}

jQuery(document).ready(function($) {

  var q = new Queue();
  
  var apis = ['26jl2yvk', 
             '7zzi4q14', 
             '6gulobkw', 
             'bqzsf5ic', 
             'e3c2s5x8', 
             'bd0v44ne', 
             'atzhjba4', 
             '9bopkdlm', 
             '6dc2e436', 
             '54vcrjr0', 
             '9ii6h4vw', 
             '5cuz4wde', 
             '7ljienlw',
             '64o81umu']
  
  var qdistricts = ['tap-mun', 'central/western', 'causeway-bay', 'mong-kok', 
                     'sham-shui-po', 'kwai-chung', 'tai-po', 'sha-tin', 'eastern',
                     'tsuen-wan', 'kwun-tong', 'yuen-long', 'tung-chung', 'tuen-mun'];
  var funcs = [];

  function createfunc(i) {
    return function(next) {
      $.ajax({
        url: 'http://www.kimonolabs.com/api/' + apis[i],
        data: {
          // kimpath3: qdistricts[i],
          apikey:'5743c698287ec3733666914bbeac3b2f'
        },
        type: 'GET',
        dataType: 'JSONP',
        success: function(result) {
          console.log(apis[i])
          districts.push({
            district_english: result.results.collection3[0].property3,
            district_chinese: result.results.collection3[1].property3,
            aqi: result.results.collection1[0].property1,
            aqhi: result.results.collection2[0].property2,
            updated_on: result.results.collection2[1].property2,
            temp: result.results.collection2[2].property2
          });
          next();
        },
        error: next
      });
    }  
  }

  for (var index in apis) {
    funcs[index] = createfunc(index);
  }

  window.districts = [];

  for (var index in funcs) {
    q.add(funcs[index])
  }
  
  q.run(function(error) {
    if (error) return alert(error);

    districts.forEach(function(dist) {
      var cn = dist.district_english.toLowerCase().replace('/','').split(' ').join('-'); 
      //this puts the aqi data into div with class of district-name-aqi (i.e. .central-aqi or tung-chung-aqi)
      console.log(cn)
      ff = freshnessfactor(dist.aqi);
      $('.' + cn +'-aqi').html(ff);
      //if you want to populate other divs with more data that we've collected, do the same 
      // i.e. $('.' + cn + '-updated-on').html(dist.updated_on); would fill the html inside div with class 
      //district-name-updated-on with the correct data
    });
  });
  
});
