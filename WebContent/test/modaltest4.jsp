<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

	



	<div id="previa" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Vista Previa</h3>
  </div>
  <div class="modal-body" id="modals">
    <script>
        $("#modals").html($("#moderador").val());
    </script>
  </div>
  <div class="modal-footer">
    <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Cerrar</button>
  </div>
</div>

</body>


<script>

$('.edit').click(function(event){
    //don't follow the link
    event.preventDefault();
    var $link = $(this).parent();
    //load in the html from the form at edit_news
    var formDOM = $("<div />").load($link.attr('href')+' #edit_form', function() { 
            //clear the dialog box
    $('#dialog-edit').empty();
            // Append to the page 
            $('#dialog-edit').append(formDOM);
            //make the dialog
            $('#dialog-edit').dialog({
                autoOpen:false,
                title:$link.attr('title'),
                width:530,
                height:465
            })
            //open it up
            $('#dialog-edit').dialog('open');
            $('#edit_form').submit(function(event){
                //knock out its form processing
                event.preventDefault();
                $.ajax({
            type    : "post",  
                    url     : $link.attr('href'),  
                    data    : $(this).serialize(),  
                    success : function() { 
                        //close dialog
                $('#dialog-edit').dialog('close');
                        }
                })
            })
    })
});

</script>


<script src="js/jquery-2.1.3.min.js"></script>
	        <script src="js/bootstrap.min.js"></script>  

</html>