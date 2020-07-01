<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

</head>

<style>
	.form-control {
   
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    color: #E9E9E9;
    vertical-align: middle;
    background-color: #525355;
    background-image: none;
    border: 1px solid #525355;
    border-radius: 4px;
    box-shadow: inset 0 1px 1px #525355;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
.btn-danger {
    color: #fff;
    background-color: #525355;
    border-color: #525355;
}
<!--#E9E9E9 -->
</style>


<body>


<div class="container">
	<div class="row">
		<h2>Stylish Search Box</h2>
           <div id="custom-search-input">
           				<form class="form-inline">
                            <div class="input-group col-md-12">
                           
                                 <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                                
                                <input type="text" class="  search-query form-control" placeholder="Search" />
                            
                            </div>
                             </form>  
                        </div>
	</div>
</div>

</body>
</html>