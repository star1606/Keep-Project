<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>codeomni.tistory.com 모달 소스 코드</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- search bootstrap -->
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<!-- modal library -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
		
		
	!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">E-Mail</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
         <textarea type="text" id="pwd"  runat="server" style="width:250px; height:35px; resize: none" class="form-control"></textarea>
    </div>
  </div>
</div>

<!-- Select Basic -->

<div class="form-group"> 
  <label class="col-md-4 control-label">User Role</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>

            <textarea type="text" id="eml"  runat="server" style="width:250px; height:35px; resize: none" class="form-control" ></textarea>

  </div>
</div>
</div>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">

    <asp:Button ID="Button1"  class="btn btn-warning" runat="server" Text="Submit" UseSubmitBehavior="false" OnClick="Button1_Click1"/>
  </div>
</div>
</fieldset>

        </div>
                </div>
</div>

    </form>

</body>


<script>
protected void Button1_Click1(object sender, EventArgs e)
{

    SqlConnection con = new SqlConnection(
    WebConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString);
    con.Open();
    SqlCommand cmd = new SqlCommand("sp_UserInsertUpdate", con);
    cmd.CommandType = System.Data.CommandType.StoredProcedure;
    cmd.Parameters.AddWithValue("UserID", userid.InnerText);
    cmd.Parameters.AddWithValue("UserRoleID", 1);
    cmd.Parameters.AddWithValue("Username", userid.InnerText);
    cmd.Parameters.AddWithValue("Password", pwd.InnerText);
    cmd.Parameters.AddWithValue("Email", eml.InnerText);
    cmd.Parameters.AddWithValue("DateCreate", DateTime.Today);
    cmd.ExecuteNonQuery();
    con.Close();

}
</script>
</body>
</html>

