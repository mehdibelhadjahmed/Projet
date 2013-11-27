package miage.SystemeDeReservation.classes;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="employes")
public class EmployeTable {

	//Attributs de la classe.
	@Id
	@GeneratedValue
	private Integer id;
	
	@NotEmpty
	private String nom;
	@NotEmpty
	private String prenom;
	@NotNull
	private int age;
	@NotEmpty
	private String tel;
	@NotEmpty
	@Email
	private String mail;
	@NotEmpty
	private String sexe;
	
	//Constructeur par d�faut, initialise tous les champ � 0 ou "". Cr�� un employ� vide.
	public EmployeTable(){
		nom = "";
		prenom="";
		age = 0;
		tel ="";
		mail="";
		sexe = "";
	}
	
	//Constructeur
	public EmployeTable(String nom, String prenom, int age, String tel, String mail, String sexe){
		this.nom = nom;
		this.prenom = prenom;
		this.age = age;
		this.tel = tel;
		this.mail = mail;
		this.sexe = sexe;
	}

	//Getters & Setters
	public int getId(){
		return id;
	}
	
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
}
