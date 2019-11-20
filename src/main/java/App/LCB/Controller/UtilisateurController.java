package App.LCB.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import App.LCB.model.Utilisateur;
import App.LCB.repository.UtilisateurRepository;

@Controller
@RequestMapping("/utilisateur")
public class UtilisateurController {

	@Autowired
	private UtilisateurRepository utilisateurRepository;
	
	@RequestMapping("/all")
	@ResponseBody
	private List<Utilisateur> SearchAll() {
		return (List<Utilisateur>) utilisateurRepository.findAll();
	}
	
}
