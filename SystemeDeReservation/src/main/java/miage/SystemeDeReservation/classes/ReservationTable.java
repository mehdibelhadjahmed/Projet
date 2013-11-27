package miage.SystemeDeReservation.classes;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Employes")
public class ReservationTable {

	//Attributs de la classe.
	@Id
	@GeneratedValue
	private Integer id;
	
	@NotEmpty
	private EmployeTable employe;
	
	@NotEmpty
	private VoitureTable voiture;
	
	@NotNull
	private Date debutReservation;
	
	@NotNull
	private Date finReservation;
	
	@NotEmpty
	private String raisonReservation;
	
	//Constructeur par défaut, initialise tous les champ à 0 ou "". Créé un employé vide.
	public ReservationTable() {
		this.employe = null;
		this.voiture = null;
		this.debutReservation = null;
		this.finReservation = null;
		this.raisonReservation = "";
	}
		
	//Constructeur
	public ReservationTable(EmployeTable employe, VoitureTable voiture, Date debut, Date fin, String raisonReservation){
		this.employe = employe;
		this.voiture = voiture;
		this.debutReservation = debut;
		this.finReservation = fin;
		this.raisonReservation = raisonReservation;
	}
	
	//Getters & Setters
	public int getId(){
		return id;
	}

	public EmployeTable getEmploye() {
		return employe;
	}

	public void setEmploye(EmployeTable employe) {
		this.employe = employe;
	}

	public VoitureTable getVoiture() {
		return voiture;
	}

	public void setVoiture(VoitureTable voiture) {
		this.voiture = voiture;
	}

	public Date getDebutReservation() {
		return debutReservation;
	}

	public void setDebutReservation(Date debutReservation) {
		this.debutReservation = debutReservation;
	}

	public Date getFinReservation() {
		return finReservation;
	}

	public void setFinReservation(Date finReservation) {
		this.finReservation = finReservation;
	}

	public String getraisonReservation() {
		return raisonReservation;
	}

	public void setFinReservation(String raisonReservation) {
		this.raisonReservation = raisonReservation;
	}
	
}
