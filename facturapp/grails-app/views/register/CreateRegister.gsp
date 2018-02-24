<%--
  Created by IntelliJ IDEA.
  User: mpietro
  Date: 2/23/18
  Time: 11:50 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>FacturApp - Crear Registro</title>

    <style type="text/css" media="screen">

    body {
        background-color: #fff059;
        text-align: center;
    }

    .meliImg {
        height: 170px;
        width: 200px;

    }
    </style>

</head>

<body>

<img src="https://static.mlstatic.com/org-img/homesnw/img/ml-logo.png?v=3.0" alt="MerqueadoLibre" class="meliImg">
<br/>
<br/>
<g:form controller="register" action="createRegister" class="meliForm" name="publicForm">

    <div class="form-group row">
        <label for="billNumber" class="col-sm-2 col-sm-offset-2 col-form-label">Nro. Factura</label>
        <div class="col-sm-6">
            <input class="form-control" name="billNumber" placeholder="Ingrese el Nro de Factura">
        </div>
    </div>
    <div class="form-group row">
        <label for="date" class="col-sm-2 col-sm-offset-2 col-form-label">Fecha</label>
        <div class="col-sm-6">
            <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>

        </div>
    </div>
    <div class="form-group row">
        <label for="price" class="col-sm-2 col-sm-offset-2 col-form-label">Precio</label>
        <div class="col-sm-6">
            <input class="form-control" name="price">
        </div>
    </div>
    <div class="form-group row">
        <label for="destiny" class="col-sm-2 col-sm-offset-2 col-form-label">Destinatario:</label>
        <div class="col-sm-6">
            <select name="destiny" class="form-control">
                <option value="ConsumidorFinal">Consumidor Final</option>
                <option value="IOMA">IOMA</option>
                <option value="Otro">Otro</option>
            </select>
        </div>
    </div>

    <input type="submit" class="btn btn-warning" value="Publicar">
</g:form>

<g:link controller="marketplace" action='index'>Volver</g:link>

<g:if test="${flash.message}">
    <div class="alert alert-success" role="alert">
        ${flash.message}
    </div>
</g:if>

<!-- Versión compilada y comprimida del CSS de Bootstrap -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
    $(document).ready(function(){
        var date_input=$('input[name="date"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'mm/dd/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
</script>

</body>
</html>