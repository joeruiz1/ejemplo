<%-- 
    Document   : ventas
    Created on : 29/10/2017, 04:43:46 PM
    Author     : Juan Manuel
--%>

<%@page import="VO.Factura"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Projects</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
 	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/preview.css" type="text/css">
	<script type="text/javascript" src="js/include_script.js"></script>
  	<!--[if lt IE 9]>
	   	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <link href="css/ie.css" rel="stylesheet" type="text/css">
    <![endif]-->
</head>
<body>
<!--content wrapper-->
	<div id="wrapper">
		<section>
			<div class="container">
				<div class="dynamicContent">
					<!--content-->
	                <div class="row">
  <h1>Registro de Libros</h1>
                    <table>
                        <tr>
                            <td>cliente</td>
                            <td>NOMBRE libro</td>
                            <td>id libro</td>
                            <td>numero de compra</td>
                            <td>precio</td>
                            <td>Numero Empleado</td>
                            
                        </tr>
                        <%
                            if (request.getAttribute("lis") != null) {
                                ArrayList<Factura> libros = (ArrayList<Factura>) request.getAttribute("lis");

                                if (libros != null) {
                                    for (Factura es: libros) {

                        %>
                        <h1></h1>
                        <tr>  
                            <td><%=es. getNombreCliente() %></td>
                            <td><%=es.getNombreLi()%></td>
                            <td><%=es.getIdLi() %></td>
                            <td><%=es. getNumFac()%></td>
                            <td><%=es.getPrecio()  %></td>
                            <td><%=es.getIdEmple()%></td>
                           
                        </tr>

                        <%

                                    }
                                }
                            }
                        %>

                    </table>
                        <h3> total ventas:</h3>
                        <h3> $<%= request.getAttribute("mayor")    %></h3>
                            
                            

	                  





	                </div>
				</div>
			</div>
		</section>
	</div>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script>
        $(".fancybox").fancybox({});
    </script>
</body>
</html>
