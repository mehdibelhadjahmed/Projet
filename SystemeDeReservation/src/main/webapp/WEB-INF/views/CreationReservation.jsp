<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Créer une nouvelle réservation</title>
<link href = "./resources/asset/css/bootstrap.css" rel="stylesheet" media = "screen">
<style>
.error{
color: red
}
</style>
</head>
<body>
<form:form class="form-horizontal" modelAttribute="reservation">
<fieldset>

<!-- Form Name -->
<legend>Création d'une réservation</legend>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="NomEmploye">Employe</label>
  <div class="controls">
    <form:input id="NomEmploye" name="NomEmploye" placeholder="" class="input-xlarge" type="text" path="employe"/>
    <form:errors cssClass="error" path="employe"></form:errors>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="ImmaVoiture">Voiture</label>
  <div class="controls">
    <form:input id="ImmaVoiture" name="ImmaVoiture" placeholder="" class="input-xlarge" type="text" path="voiture"/>
    <form:errors cssClass="error" path="voiture"></form:errors>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="DateDebut">Début réservation</label>
  <div class="controls">
    <form:input id="DateDebut" name="DateDebut" placeholder="" class="input-xlarge" type="text" path="debutReservation" />
    <form:errors cssClass="error" path="debutReservation"></form:errors>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="FinReservation">Fin Réservation</label>
  <div class="controls">
    <form:input id="FinReservation" name="FinReservation" placeholder="" class="input-xlarge" type="text" path="finReservation"/>
    <form:errors cssClass="error" path="finReservation"></form:errors>
  </div>
</div>

<!-- Textarea -->
<div class="control-group">
  <label class="control-label" for="RaisonRervation">Raison de la réservation</label>
  <div class="controls">                     
    <form:textarea id="RaisonRervation" name="RaisonRervation" path="raisonReservation"></form:textarea>
  </div>
</div>

<!-- Button (Double) -->
<div class="control-group">
  <label class="control-label" for="OkBouton"></label>
  <div class="controls">
    <button id="OkBouton" name="OkBouton" class="btn btn-success">Valider</button>
    <button id="AnnulerBouton" name="AnnulerBouton" class="btn btn-danger">Annuler</button>
  </div>
</div>

</fieldset>
</form:form>
</body>
</html>