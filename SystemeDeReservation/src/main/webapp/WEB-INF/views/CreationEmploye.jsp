<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Créer un nouvel employé</title>
<link href = "./resources/asset/css/bootstrap.css" rel="stylesheet" media = "screen">
<style>
.error{
color: red
}
</style>
</head>
<body>
<form:form class="form-horizontal" modelAttribute="employe" action="Resultat" method="post">
<fieldset>

<!-- Form Name -->
<legend>Création d'un nouvel employé</legend>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="NomEmploye">Nom</label>
  <div class="controls">
    <form:input id="NomEmploye" name="NomEmploye" placeholder="" class="input-xlarge" type="text" path="nom"/>
    <form:errors cssClass="error" path="nom"></form:errors>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="PrenomEmploye">Prénom</label>
  <div class="controls">
    <form:input id="PrenomEmploye" name="PrenomEmploye" placeholder="" class="input-xlarge" type="text" path="prenom"/>
    <form:errors cssClass="error" path="prenom"></form:errors>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="AgeEmploye">Age</label>
  <div class="controls">
    <form:input id="AgeEmploye" name="AgeEmploye" placeholder="" class="input-xlarge" type="text" path="age"/>
    <form:errors cssClass="error" path="age"></form:errors>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="TelEmploye">Téléphone</label>
  <div class="controls">
    <form:input id="TelEmploye" name="TelEmploye" placeholder="" class="input-xlarge" type="text" path="tel"/>
    <form:errors cssClass="error" path="tel"></form:errors>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="MailEmploye">E-Mail</label>
  <div class="controls">
    <form:input id="MailEmploye" name="MailEmploye" placeholder="" class="input-xlarge" type="text" path="mail"/>
    <form:errors cssClass="error" path="mail"></form:errors>
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="control-group">
  <label class="control-label" for="SexRadio">Sexe</label>
  <div class="controls">
    <label class="radio inline" for="SexRadio-0">
	<input name="SexRadio" id="SexRadio-0" value="Homme" checked="checked" type="radio">
      Homme
    </label>
    <label class="radio inline" for="SexRadio-1">
      <input name="SexRadio" id="SexRadio-1" value="Femme" type="radio">
      Femme
    </label>
    <form:errors cssClass="error" path="sexe"></form:errors>
  </div>
</div>

<!-- Button (Double) -->
<div class="control-group">
  <label class="control-label" for="ValiderButton"></label>
  <div class="controls">
    <form:button id="ValiderButton" name="ValiderButton" class="btn btn-success" type="submit" path="" >Valider</form:button>
    <form:button id="AnnulerButton" name="AnnulerButton" class="btn btn-danger" path="">Annuler</form:button>
  </div>
</div>

</fieldset>
</form:form>

</body>
</html>