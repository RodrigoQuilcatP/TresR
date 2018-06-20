<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnvioReclamo.aspx.cs" Inherits="tresR.EnvioReclamo" %>

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
        /*VALIDACIONES*/
        function validarEmail(email) {
            var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(email);
        }
        function soloLetras(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                ((evt.which) ? evt.which : 0));
            if (charCode > 31 && (charCode < 65 || charCode > 90) &&
                (charCode < 97 || charCode > 122)) {
                evt.preventDefault();
                return false;
            }
            return true;
        }
    </script>
    <script type="text/javascript">
        $(document).ready(function () {            
            $('#lblReciclar').click(function () {
                window.open("./TipoMaterial.aspx", "_self");
            });
            $('#lblLogo').click(function () {
                window.open("./MainPage.aspx", "_self");
            });
            $('#btnEntendido').hide();
            $('#instagram').click(function () {
                window.open("https://www.instagram.com", "_blank")                
            });
            $('#twt').click(function () {
                window.open("https://www.twitter.com", "_blank")
            });
            $('#fb').click(function () {
                window.open("https://www.facebook.com", "_blank")
            });
            $('#btnSend').click(function () {
                var msg = '';
                var _txtNombre = $("#nombre").val();
                var _txtApellido = $("#apellido").val();
                var _txtUrbanizacion = $("#urbanizacion").val();
                var _correo = $("#correo").val();
                var _reclamo = $("#reclamo").val();
                ///////////////////////////////////////////////////////////
                if (_txtNombre.trim() == '') {
                    msg += 'Ingrese un nombre  \n';
                    document.getElementById("errorNom").innerHTML = 'Ingrese un nombre';                    
                } else {
                    document.getElementById("NombreError").style.display = "none";                 
                }
                ///////////////////////////////////////////////////////////
                if (_reclamo.trim() == '') {
                    msg += 'Ingrese un reclamo  \n';
                    document.getElementById("errorRecl").innerHTML = 'Ingrese un reclamo';
                } else {
                    document.getElementById("ReclamoError").style.display = "none";
                }
                ///////////////////////////////////////////////////////////
                if (_txtApellido.trim() == '') {
                    msg += 'Ingrese un apellido  \n';
                    document.getElementById("errorApe").innerHTML = 'Ingrese un apellido';                    
                } else {
                    document.getElementById("ApellidoError").style.display = "none";                      
                }
                ///////////////////////////////////////////////////////////
                if (_txtUrbanizacion.trim() == '') {
                    msg += 'Ingrese una urbanizacion  \n';
                    document.getElementById("errorUrb").innerHTML = 'Ingrese una urbanización';                    
                } else {
                    document.getElementById("UrbError").style.display = "none";                      
                }
                ///////////////////////////////////////////////////////////
                if (validarEmail(_correo)) {                    
                    document.getElementById("CorreoError").style.display = "none";
                } else {
                    msg += 'Ingrese un correo valido  \n';
                    document.getElementById("errorCorreo").innerHTML = 'Ingrese un correo válido';
                }
                ///////////////////////////////////////////////////////////
                if (msg.length > 0) {
                    document.getElementById('id01').style.display = "block";
                    $('#btnEntendido').show();
                    return false;
                } else {                    
                    document.getElementById("lblBien").innerHTML = 'Datos enviados exitosamente!';  
                    document.getElementById('id01').style.display = "block";
                    $('#btnEntendido').show();
                }
                $('#btnEntendido').click(function () {
                    window.open("./MainPage.aspx", "_self");
                });
            });
        });
    </script>
    <script type="text/javascript">        
        
    </script>
</head>
<body>
   <form id="form1" runat="server">
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
            <td style="width: 100%;background: #c3f9de;" colspan="5">                 
                 <center>
                 <table style="padding-bottom: 150px;">
                     <tr>
                         <td colspan="2" style="text-align: center">
                            <label style="font-size: 60px;font-family:'Segoe UI Semilight';color:#4c4c4c">Reclamos</label>
                         </td>
                     </tr>
                     <tr>
                         <td class="lblForm">
                             Nombres
                         </td>
                         <td class="lblReclamo">
                             Reclamo:
                         </td>
                     </tr>
                     <tr>
                         <td class="entradas">
                            <input type="text" placeholder="Ingrese sus Nombres" class="envio" id="nombre" onkeypress="soloLetras(event);"/>
                         </td>
                         <td rowspan="7">
                            <textarea rows="10" cols="26" style="resize: none" placeholder="Escriba su reclamo..." class="plTxt" id="reclamo"></textarea>
                         </td>
                     </tr>
                     <tr>
                            <td class="lblForm">
                             Apellidos
                         </td>
                     </tr>
                     <tr>
                         <td class="entradas">
                            <input type="text" placeholder="Ingrese sus Apellidos" class="envio" id="apellido" onkeypress="soloLetras(event);" />
                         </td>
                     </tr>
                     <tr>
                            <td class="lblForm">
                            Urbanizacion
                        </td>
                    </tr>
                    <tr>
                         <td class="entradas">
                             <input type="text" placeholder="Ingrese una Urbanización" class="envio" id="urbanizacion" />
                         </td>
                    </tr>
                    <tr>
                            <td class="lblForm">
                             Email
                         </td>
                    </tr>
                    <tr>
                         <td class="entradas">
                             <input type="text" placeholder="Ingrese su correo" class="envio" id="correo" />
                         </td>
                    </tr>                                            
                    <tr>
                        <td colspan="2" style="text-align: center;padding-top: 20px">
                            <input type="button" value="Enviar Reclamo" class="btnEnviar" id="btnSend" />
                        </td>
                    </tr>
                     <tr>
                         <td colspan="2">
                             <div id="id01" class="modal">
                              <div class="modal-content">
                                <div class="container" id="maincorp">
                                  <center>
                                  <div id="txtBien"><label style="font-size:22px;font-family:'Segoe UI Semibold';" id="lblBien"></label><br /></div>
                                  <div id="NombreError"><label style="font-size:16px;font-family:'Segoe UI Semibold';" id="errorNom"></label><br /></div>
                                  <div id="ReclamoError"><label style="font-size:16px;font-family:'Segoe UI Semibold';" id="errorRecl"></label><br /></div>
                                  <div id="ApellidoError"><label style="font-size:16px;font-family:'Segoe UI Semibold';" id="errorApe"></label><br /></div>
                                  <div id="UrbError"><label style="font-size:16px;font-family:'Segoe UI Semibold';" id="errorUrb"></label><br /></div>
                                  <div id="CorreoError"><label style="font-size:16px;font-family:'Segoe UI Semibold';" id="errorCorreo"></label><br /></div>                                  
                                  <div id="btnEntendido" style="padding-top:15px"><input type="button" class="btnAceptar" value="Entendido" onclick="document.getElementById('id01').style.display = 'none'"/></div>
                                    </center>
                                  <br/>
                                </div>
                              </div>
                            </div>
                         </td>
                     </tr>
                 </table>
                </center>
            </td>
       </tr>            
   </table>   
</form>
</body>
</html>
