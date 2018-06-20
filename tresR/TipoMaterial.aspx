<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TipoMaterial.aspx.cs" Inherits="tresR.TipoMaterial" %>

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
                window.open("./MainPage.aspx", "_self");
            });
            $('#carton').click(function () {
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
                 <table style="padding-bottom: 150px;width: 850px;">
                     <tr>
                         <td colspan="5" style="text-align: center">
                            <label style="font-size: 60px;font-family:'Segoe UI Semilight';color:#4c4c4c;text-align: center">Escoge el tipo de material que deseas reciclar</label>
                         </td>
                     </tr>
                     <tr>
                        <td><img src="resources/ElectronicosImg.png" /></td>
                        <td></td>
                        <td><img src="resources/ImgPapel.png" /></td>
                        <td></td>
                        <td><img src="resources/Plastico.png" /></td>
                     </tr>
                     <tr>
                            <td></td>
                            <td style="cursor:pointer"><img src="resources/Carton.png" id="carton"/></td>
                            <td></td>
                            <td><img src="resources/Vidrio.png" /></td>
                            <td></td>
                     </tr>                     
                 </table>
                </center>
            </td>
        </tr>
    </table>
</body>
</html>