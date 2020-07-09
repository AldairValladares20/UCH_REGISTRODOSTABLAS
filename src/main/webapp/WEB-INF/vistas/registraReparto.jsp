<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>VALLADARES</title>
</head>
<body>
<body background="fondo/mercaderia.jpg">
<div class="container">
<h1>Registra REPARTO</h1>

	<c:if test="${sessionScope.MENSAJE != null}">
		<div class="alert alert-success fade in" id="success-alert">
		 <a href="#" class="close" data-dismiss="alert">&times;</a>
		 <strong>${sessionScope.MENSAJE}</strong>
		</div>
	</c:if>
	<c:remove var="MENSAJE" />
	
	<form action="registroDeReparto" id="id_form"> 

			<div class="form-group">
				<label class="control-label" for="id_nombre">CODiGO REPARTIDOR</label>
				<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el codigo de repartidor" maxlength="6">    
			</div>
			
			<div class="form-group">
				<label class="control-label" for="id_direccion">DIRECCION</label>
				<input class="form-control" type="text" id="id_direccion" name="direccion" placeholder="Ingrese la direccion" maxlength="10">    
			</div>
			
			<div class="form-group">
				<label class="control-label" for="id_cliente">NOMBRE CLIENTE</label>
				<input class="form-control" type="text" id="id_cliente" name="cliente" placeholder="Ingrese el cliente" maxlength="20" >    
			</div>
			<div class="form-group">
				<label class="control-label" for="id_tienda">NOMBRE TIENDA</label>
				<input class="form-control" type="text" id="id_tienda" name="tienda" placeholder="Ingrese el nombre de tienda"maxlength="10" >    
			</div>
			<div class="form-group">
				<label class="control-label" for="id_total">TOTAL</label>
				<input class="form-control" type="number" id="id_total" name="total" placeholder="Ingrese el total" >    
			</div>
			<div class="form-group">
				<label class="control-label" for="id_turno">TURNO</label>
				<select class="form-control" id="id_turno" name="turno.idTurno">
					<option value="">[Seleccione Turno]</option>
				</select>
			</div>
	
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea</button>
			</div>
	</form>
</div>

<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>
<script type="text/javascript">
console.log("Inicio");
	$.getJSON("cargaTurno",{}, function(data){
		console.log(data);
		$.each(data,function(i,item){
			$("#id_turno").append("<option value='"+ item.idTurno+"'>" +  item.nombre +"<option>");
		});
	});
	</script>
<script type="text/javascript">
$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        		nombre:{
                    selector: "#id_nombre",
                    validators:{
                        notEmpty: {
                             message: 'El codigo repartidor es obligatorio'
                        },
                        stringLength: {
                            min: 3,
                            max: 40,
                            message: 'El nombre es de 10 caracteres'
                        },
                    }
                },
            		direccion:{
                        selector: "#id_direccion",
                        validators:{
                            notEmpty: {
                                 message: 'El codigo repartidor es obligatorio'
                            },
                            stringLength: {
                                min: 3,
                                max: 40,
                                message: 'El nombre es de 10 caracteres'
                            },
                        }
                    },
                		cliente:{
                            selector: "#id_cliente",
                            validators:{
                                notEmpty: {
                                     message: 'El codigo repartidor es obligatorio'
                                },
                                stringLength: {
                                    min: 3,
                                    max: 40,
                                    message: 'El nombre es de 20 caracteres'
                                },
                            }
                        },
                    		tienda:{
                                selector: "#id_tienda",
                                validators:{
                                    notEmpty: {
                                         message: 'El codigo repartidor es obligatorio'
                                    },
                                    stringLength: {
                                        min: 3,
                                        max: 40,
                                        message: 'El nombre es de 10 caracteres'
                                    },
                                }
                            },
                total:{
                    selector: "#id_total",
                    validators:{
                        notEmpty: {
                             message: 'ingrese el total'
                        },
                       
                    }
                },
                turno:{
                    selector: "#id_turno",
                    validators:{
                        notEmpty: {
                             message:'Turno Obligatorio'
                        },
                    }
                },
        }   
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>

</body>
</html>




