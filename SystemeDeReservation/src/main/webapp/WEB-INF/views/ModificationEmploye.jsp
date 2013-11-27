<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modifier un employé</title>
<link href = "./resources/asset/css/bootstrap.css" rel="stylesheet" media = "screen">
<style>
.error{
color: red
}
</style>
</head>
<body>
<form:form class="form-horizontal" modelAttribute="employe">
<fieldset>

<!-- Form Name -->
<legend>Modification d'un employé</legend>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="IdEmplyee">Id</label>
  <div class="controls">
    <form:input disabled="disabled" id="IdEmplyee" name="IdEmplyee" placeholder="" class="input-xlarge" type="text" path="id"/>
    <form:errors cssClass="error" path="id"></form:errors>
  </div>
</div>

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