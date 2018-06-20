<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VideoCarton.aspx.cs" Inherits="tresR.VideoCarton" %>

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
            $('#regresar').click(function () {
                window.open("./MaterialCarton.aspx", "_self");
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
    <style type="text/css">
        .auto-style1 {
            cursor: pointer;
            height: 59px;
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
        <tr>
            <td style="width: 100%; background: #c3f9de" colspan="5">
                <center>
                 <table style="width: 850px;">
                     <tr>
                         <td style="text-align: center">
                            <label style="font-size: 60px;font-family:'Segoe UI Semilight';color:#4c4c4c;text-align: center">Cartón</label>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <video width="800" controls>
                             <source src="resources/carton.mp4" type="video/mp4" >
                             </video>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:left">
                            <img src="resources/Previous%20Arrow%20Button.png" id="regresar" class="auto-style1" />
                         </td>
                     </tr>
                     <br />
                     <tr>
                         <td></td>
                     </tr>                     
                 </table>
                </center>
            </td>
        </tr>
    </table>
</body>
</html>