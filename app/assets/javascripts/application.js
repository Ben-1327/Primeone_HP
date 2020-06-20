// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function initMap(){
//一つ目の地図
  var latlng = new google.maps.LatLng(35.074963,135.520204);
  var myOptions = {
      zoom: 18,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map_01 = new google.maps.Map(
      document.getElementById("map-01"),  //一つ目の地図のIDを指定
      myOptions
  );
  var marker = new google.maps.Marker({
      position: latlng,
      map: map_01,
  });
//二つ目の地図
  var latlng = new google.maps.LatLng(34.986066,135.717118);
  var myOptions = {
      zoom: 18,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map_02 = new google.maps.Map(
      document.getElementById("map-02"),  //二つ目の地図のIDを指定
      myOptions
  );
  var marker = new google.maps.Marker({
      position: latlng,
      map: map_02,
  });
};
