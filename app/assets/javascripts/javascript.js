$(function() {
  $('#back a').on('click',function(event){
    $('body, html').animate({
      scrollTop:0
    }, 800);
    event.preventDefault();
  });
});

function initMap() {

    var test ={lat: <%= @gym.latitude %>, lng: <%= @gym.longitude %>};
    var map = new google.maps.Map(document.getElementById('map'), {
              zoom: 15, 
              center: test
              });
    var transitLayer = new google.maps.TransitLayer();
    transitLayer.setMap(map);

    var contentString = '住所：<%= @gym.address %>';
    var infowindow = new google.maps.InfoWindow({
      content: contentString
    });

    var marker = new google.maps.Marker({
                  position:test,
                  map: map,
                  title: contentString
                 });

     marker.addListener('click', function() {
       infowindow.open(map, marker);
     });
  }

  $(function() {
  $('.menu-trigger').on('click', function(event) {
    $(this).toggleClass('active');
    $('#sp-menu').fadeToggle();
    event.preventDefault();
  });
});