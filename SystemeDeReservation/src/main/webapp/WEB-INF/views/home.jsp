<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link href = "./resources/asset/css/bootstrap.css" rel="stylesheet" media = "screen">
<style>
.error{
color: red
}
</style>
</head>
    <body>
        <form class="form-horizontal" method="post" action="Requete">
<fieldset>

<!-- Form Name -->
<legend>Page principale</legend>

<!-- Select Basic -->
<div class="control-group">
  <label class="control-label">Action � effectuer</label>
  <div class="controls">
    <select id="choix" name="choix" class="input-xlarge">
      <option id="1" value="CreEmp">Cr�ation d'un nouvel employ�</option>
      <option id="2" value="ModEmp">Modification d'un employ�</option>
      <option id="3" value="SuppEmp">Suppression d'un emply�</option>
      <option id="4" value="CreVoi">Cr�ation d'un v�hicule</option>
      <option id="5" value="ModVoi">Modification d'un v�hicule</option>
      <option id="6" value="SuppVoi">Suppression d'un v�hicule</option>
      <option id="7" value="CreRes">Cr�ation d'une r�servation</option>
      <option id="8" value="ModRes">Modification d'une r�servation</option>
      <option id="9" value="SuppRes">Suppression d'une r�servation</option>
    </select>
  </div>
</div>

<!-- Button -->
<div class="control-group">
  <label class="control-label" for="EnvoyerButton"></label>
  <div class="controls">
    <button id="EnvoyerButton" name="EnvoyerButton" class="btn btn-primary">Envoyer</button>
  </div>
</div>

</fieldset>
</form>
    </body>
</html>
