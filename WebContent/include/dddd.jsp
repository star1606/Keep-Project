<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://bootswatch.com/flatly/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>		
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<title>TODO App</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<style type="text/css">
	#todoList li {cursor: pointer;}
	</style>
</head>
<body>

	<div class="container">

		<!-- Static navbar -->
		<div class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">TODO App</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Nav header</li>
								<li><a href="#">Separated link</a></li>
								<li><a href="#">One more separated link</a></li>
							</ul>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="./">Default</a></li>
						<li><a href="../navbar-static-top/">Static top</a></li>
						<li><a href="../navbar-fixed-top/">Fixed top</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div><!--/.container-fluid -->
		</div>
		<h1>TODO</h1>

		<form class="form-inline" role="form">
			<div class="form-group">
				<input type="text" class="form-control" id="todo" placeholder="Add todo">
			</div>
			<input type="submit" class="btn btn-primary" id="add-todo-button" value="Add">
		</form>

		<br>

		<div class="row">
			<div class="col-md-6"><div class="well"><h2>TODO</h2><ul id="todoList" class="listarea"></ul></div></div>
			<div class="col-md-6"><div class="well"><h2>Done</h2><ul id="doneList" class="listarea"></ul></div></div>
		</div>

	</div> <!-- ./container -->
	<script type="text/javascript">
	$('#add-todo-button').click( function( e ) {
		var todo = $('#todo');
		if(todo.val()) {
			$('#todoList').append("<li title='Click to finish todo'>" + todo.val() + "</li>");
			$('#todo').val("").focus();
		}
		e.preventDefault();
	});

	$('#todo').keypress(function(e){
		if (e.keyCode === 13) {
			$('#add-todo-button').click();
		}
	});

	$('#todoList').click(function( e ){
		if(e.target.nodeName === 'LI') {
			var doneTodo = e.target;
			doneTodo.title = "";
			// add to doneList
			$("#doneList").append(doneTodo);
		}
	});
	</script>
</body>
</html>