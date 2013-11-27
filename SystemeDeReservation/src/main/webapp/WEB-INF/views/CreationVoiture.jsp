<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Créer une nouvelle voiture</title>
<link href = "./resources/asset/css/bootstrap.css" rel="stylesheet" media = "screen">
<style>
.error{
color: red
}
</style>
</head>
<body>
<form:form class="form-horizontal" modelAttribute="voiture">
<fieldset>

<!-- Form Name -->
<legend>Création d'une nouvelle voiture</legend>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="MarqueVehicule">Marque</label>
  <div class="controls">
    <form:input id="MarqueVehicule" name="MarqueVehicule" placeholder="" class="input-xlarge" type="text" path="marque"/>
    <form:errors cssClass="error" path="marque"></form:errors>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="ModeleVehicule">Modèle</label>
  <div class="controls">
    <form:input id="ModeleVehicule" name="ModeleVehicule" placeholder="" class="input-xlarge" type="text" path="modele"/>
    <form:errors cssClass="error" path="modele"></form:errors>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="AnneeVehicule">Année</label>
  <div class="controls">
    <form:input id="AnneeVehicule" name="AnneeVehicule" placeholder="" class="input-xlarge" type="text" path="annee"/>
    <form:errors cssClass="error" path="annee"></form:errors>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="ImmatriculationVehicule">Immatriculation</label>
  <div class="controls">
    <form:input id="ImmatriculationVehicule" name="ImmatriculationVehicule" placeholder="" class="input-xlarge" type="text" path="immatriculation"/>
    <form:errors cssClass="error" path="immatriculation"></form:errors>
  </div>
</div>

<!-- Button (Double) -->
<div class="control-group">
  <label class="control-label" for="ValiderButton"></label>
  <div class="controls">
    <button id="ValiderButton" name="ValiderButton" class="btn btn-success">Valider</button>
    <button id="AnnulerButton" name="AnnulerButton" class="btn btn-danger">Annuler</button>
  </div>
</div>

</fieldset>
</form:form>
</body>
</html>