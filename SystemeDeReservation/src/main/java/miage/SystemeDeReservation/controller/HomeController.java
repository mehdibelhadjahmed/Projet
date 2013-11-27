package miage.SystemeDeReservation.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import miage.SystemeDeReservation.Service.EmployeService;
import miage.SystemeDeReservation.Service.ReservationService;
import miage.SystemeDeReservation.Service.VoitureService;
import miage.SystemeDeReservation.classes.EmployeTable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@Autowired
	private EmployeService employeService;

	@Autowired
	private VoitureService voitureService;

	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping(value = "/")
	public ModelAndView test(HttpServletResponse response) throws IOException {
		return new ModelAndView("home");
	}

	// Attention il faut rajouter le Parametre BindingREsult et @valid pour
	// tester mes données
	@RequestMapping(value = "/Requete", method = RequestMethod.POST)
	public ModelAndView viewcontact(HttpServletRequest req,
			HttpServletResponse response) throws IOException {
		// on créé une nouvelle view
		ModelAndView view = new ModelAndView();
		String ChoixString = "";
		int Choix = 0;
		try {

			ChoixString = req.getParameter("choix");
			System.out.print("Choix de l'utilisateur: " + ChoixString + "\n");
			if (ChoixString.equals("CreEmp")) {
				Choix = 1;
			}
		} catch (Exception ex) {
			// ne rien faire...
		}
		System.out.print("Choix de l'utilisateur: " + Choix);

		switch (Choix) {
		case 1:
			view.setViewName("CreationEmploye");
			view.addObject("employe", new EmployeTable());
			break;
		case 2:
			view.setViewName("ModificationEmploye");
			break;
		case 3:
			view.setViewName("CreationVoiture");
			break;
		case 4:
			view.setViewName("ModificationVoiture");
			break;
		case 5:
			view.setViewName("CreationReservation");
			break;
		case 6:
			view.setViewName("ModificationReservation");
			break;
		default:
			break;
		}
		return view;
	}

	@RequestMapping(value = "/Resultat", method = RequestMethod.POST)
	public ModelAndView viewcontact(@Valid @ModelAttribute EmployeTable e,
			BindingResult result, HttpServletResponse response)
			throws IOException {

		System.out.print("Coucou test");
		// Ajout de l'employé dans la base
		employeService.addEmploye(e);

		// on créé une nouvelle view
		ModelAndView view = new ModelAndView();
		if (result.hasErrors()) {
			view.setViewName("home");
		} else {
			view.setViewName("CreationEmploye");
			// on ajoute l'objet client à la view, client que l'on récupère de
			// la base
			view.addObject("employe", employeService.getEmploye(e.getId()));
		}
		// on balance la view
		return view;
	}
}
