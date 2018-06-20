<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaterialCarton.aspx.cs" Inherits="tresR.MaterialCarton" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>tresR</title>
    <link href="resources/estilosIHM.css" rel="stylesheet" />
    <script src="resources/jquery3-3-1.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#lblReclamo').click(function () {
                window.open("./EnvioReclamo.aspx", "_self");
            });
            $('#lblLogo').click(function () {
                window.open("./TipoMaterial.aspx", "_self");
            });
            $('#lblReciclar').click(function () {
                window.open("./TipoMaterial.aspx", "_self");
            });
            $('#btnVideo').click(function () {
                window.open("./VideoCarton.aspx", "_self");
            });
            $('#imgcarton').click(function () {
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
    <style>
        .mapacontainer {
    height: 354px;
}
    </style>
</head>
<body>
    <table class="banner">
        <tr>
            <td style="color: white; font-size: 25px; font-family: 'Segoe UI Semibold'; width: 80px; padding-left: 3%">
                <div style="cursor: pointer" id="lblLogo">tres<label style="color: white; font-size: 30px; font-family: 'Segoe UI'; font-weight: bold; cursor: pointer">R</label></div>
            </td>
            <td style="text-align: right" class="indicadores">
                <label style="cursor: pointer" id="lblReciclar">RECICLAJE</label></td>
            <td style="width: 50px"></td>
            <td style="text-align: left" class="indicadores">
                <label style="cursor: pointer" id="lblReclamo">RECLAMOS</label></td>
           <td style="width: 20px">
           <img src="resources/Symbol%204%20–%201.png" style="padding-right: 60px; padding-top: 3%;cursor:pointer" id="instagram" />
                <img src="resources/Symbol%203%20–%201.png" style="padding-right: 60px; padding-top: 3%;cursor:pointer" id="twt"/>
                <img src="resources/Symbol%202%20–%201.png" style="padding-right: 60px; padding-top: 3%;cursor:pointer" id="fb"/>
        </td>
        </tr>
        <tr style="height: 638px;">
            <td style="width: 100%; background: #c3f9de" colspan="5">
                <center>
                 <table style="padding-bottom: 100px;width:847px;">
                     <tr>
                         <td style="text-align:center;width: 317px;"><img src="resources/Carton.png" id="imgcarton" style="cursor:pointer" /></td>
                         <td style="text-align:center"> <label style="font-size: 50px;font-family:'Segoe UI Semilight';color:#4c4c4c;">Cartón</label>
                             <p style="font-size: 14px">Mapa de los puntos de reciclaje de Cartón</p>
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 317px;">
                             <p style="font-family: 'Segoe UI Semilight';">El cartón es un material formado por varias capas de papel superpuestas, a base de fibra virgen o de papel reciclado. El cartón es más grueso, duro y resistente que el papel. Algunos tipos de cartón son usados para fabricar embalajes y envases, básicamente cajas de diversos tipos. La capa superior puede recibir un acabado diferente llamado «estuco» que le confiere mayor vistosidad.</p>
                         </td>
                         <td rowspan="2">
                             <div id="mapacontainer" class="mapacontainer"></div>
                             <script>
                                 function initMap() {
                                     var map = new google.maps.Map(document.getElementById('mapacontainer'), {
                                         center: { lat: -8.125111, lng: -79.033589 },
                                         zoom: 16,
                                         disableDefaultUI: true
                                     });
                                     var infoWindow = new google.maps.InfoWindow({ map: map });
                                     ////////////////////////////////////////////////////
                                     var contentInfoUPAO = '<div>Universidad Privada Antenor Orrego</div>';
                                     var infowindowUPAO = new google.maps.InfoWindow({
                                         content: contentInfoUPAO
                                     });
                                     var contentInfoSanidad = '<div>Sanidad PNP Trujillo<div>';
                                     var infowindowSanidad = new google.maps.InfoWindow({
                                         content: contentInfoSanidad
                                     });
                                     /////////////////////////////////////
                                     var markerUPAO = new google.maps.Marker({
                                         position: {lat: -8.126649, lng: -79.031821},
                                         map: map
                                     });
                                     markerUPAO.addListener('click', function () {
                                         infowindowUPAO.open(map, markerUPAO);
                                     });

                                     var markerSanidad = new google.maps.Marker({
                                         position: {lat:-8.123064,lng: -79.031944},
                                         map: map                                         
                                     });
                                     markerSanidad.addListener('click', function () {
                                         infowindowSanidad.open(map, markerSanidad);
                                     });

                                     // Try HTML5 geolocation.
                                     if (navigator.geolocation) {
                                         navigator.geolocation.getCurrentPosition(function (position) {
                                             var pos = {
                                                 lat: position.coords.latitude,
                                                 lng: position.coords.longitude
                                             };
                                             map.setCenter(pos);
                                             var marker = new google.maps.Marker({
                                                 position: pos,
                                                 map: map,
                                                 icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png'
                                             });
                                         }, function () {
                                             handleLocationError(true, infoWindow, map.getCenter());
                                         });
                                     } else {
                                         // Browser doesn't support Geolocation
                                         handleLocationError(false, infoWindow, map.getCenter());
                                     }
                                 }

                                 function handleLocationError(browserHasGeolocation, infoWindow, pos) {
                                     infoWindow.setPosition(pos);
                                     infoWindow.setContent(browserHasGeolocation ?
                                         'Error: El servicio de geolocalizacion falló.' :
                                         'Error: Tu navegador no soporta geolocalización.');
                                 }
                             </script>
                             <script async defer
                             src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbE6zoc25jqK8oGIS1yjeZMcPpH4ry1FE&callback=initMap">
                             </script>
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 317px;text-align:center"><input type="button" value="Videos del material" class="butnVideo" id="btnVideo" /></td>
                     </tr>
                 </table>
                </center>
            </td>
        </tr>
    </table>
</body>
</html>