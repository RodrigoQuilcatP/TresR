<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="tresR.MainPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>tresR</title>
    <link href="resources/estilosIHM.css" rel="stylesheet" />
    <script src="resources/jquery3-3-1.min.js"></script>
    <script>      
      $(document).ready(function() {
        document.getElementById('id01').style.display="block";
        $('#btnEntendido').hide();
        $('#lblReclamo').click(function () {
            window.open("./EnvioReclamo.aspx", "_self");
        });
        $('#lblReciclar').click(function () {
            window.open("./TipoMaterial.aspx", "_self");
        });
        $('#instagram').click(function () {
            window.open("https://www.instagram.com", "_blank")
        });
        $('#twt').click(function () {
            window.open("https://www.twitter.com", "_blank")
        });
        $('#fb').click(function () {
            window.open("https://www.facebook.com", "_blank")
        });
      });
    </script>
</head>
<body>
   <table class="banner">
       <tr>           
        <td style="color:white;font-size:25px;font-family:'Segoe UI Semibold';width: 80px;padding-left: 3%"><div style="cursor: pointer" id="lblLogo">tres<label style="color:white;font-size:30px;font-family:'Segoe UI';font-weight:bold;cursor:pointer">R</label></div></td>
        <td style="text-align: right" class="indicadores"><label style="cursor: pointer" id="lblReciclar">RECICLAJE</label></td>
        <td style="width: 50px"></td>
        <td style="text-align: left" class="indicadores"><label style="cursor: pointer" id="lblReclamo">RECLAMOS</label></td>
        <td style="width: 20px">
           <img src="resources/Symbol%204%20–%201.png" style="padding-right: 60px; padding-top: 3%;cursor:pointer" id="instagram" />
                <img src="resources/Symbol%203%20–%201.png" style="padding-right: 60px; padding-top: 3%;cursor:pointer" id="twt"/>
                <img src="resources/Symbol%202%20–%201.png" style="padding-right: 60px; padding-top: 3%;cursor:pointer" id="fb"/>
        </td>
    </tr>      
       <tr style="height: 638px;">
            <td style="width: 100%;background: white" colspan="5">
                 <div class="map" id="map"></div>
                 <script>
                        function initMap() {
                          var map = new google.maps.Map(document.getElementById('map'), {
                            center: {lat: -8.125111, lng: -79.033589},
                            zoom: 17
                          });
                          var image = 'https://royaldesign.se/img/icons/shipment.png';
                          var beachMarker = new google.maps.Marker({
                            position: {lat: -8.127337, lng: -79.036249},
                            map: map,
                            icon: image
                          });
                          var infoWindow = new google.maps.InfoWindow({map: map});
                  
                          //HTML5 geolocation.
                          if (navigator.geolocation) {
                            navigator.geolocation.getCurrentPosition(function(position) {
                              var pos = {
                                lat: position.coords.latitude,
                                lng: position.coords.longitude
                              };            
                              map.setCenter(pos);
                              var marker = new google.maps.Marker({
                                position: pos,
                                map: map
                              });                        
                              $('#btnEntendido').show();                              
                            }, function() {
                              handleLocationError(true, infoWindow, map.getCenter());
                            });                            
                          } else {
                            // No lo soporta
                            handleLocationError(false, infoWindow, map.getCenter());
                          }
                        }
                  
                        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
                          infoWindow.setPosition(pos);
                          infoWindow.setContent(browserHasGeolocation ?
                                                'Error: El servicio de geolocalizacion falló.' :
                                                'Error: Tu navegador no soporta geolocalizacion.');
                        }
                 </script>
                 <script async defer
                 src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbE6zoc25jqK8oGIS1yjeZMcPpH4ry1FE&callback=initMap">
                 </script>
            </td>
       </tr>
       <tr>
          <td colspan="5">
            <div id="id01" class="modal">
              <div class="modal-content">
                <div class="container" id="maincorp">                  
                  <p style="font-size:25px;font-family:'Segoe UI Semibold';"><b>Activa tu ubicación en el navegador para proporcionar una mejor experiencia</b></p>
                  <p style="font-size: 14px">En caso de no cargar la petición de ubicación, por favor refrescar la página</p>
                  <div id="btnEntendido"><input type="button" class="btnAceptar" value="Entendido" onclick="document.getElementById('id01').style.display='none'" /></div>
                  <br/>
                </div>
              </div>
            </div>
          </td>
        </tr>       
   </table>   
</body>
</html>