package App.LCB.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import App.LCB.model.Recette;
import App.LCB.model.Utilisateur;
import App.LCB.repository.RecetteRepository;
import App.LCB.repository.UtilisateurRepository;

@Controller
@RequestMapping("/recette")
public class RecetteController {

	@Autowired
	private RecetteRepository recetteRepository;
	
	@Autowired
	private UtilisateurRepository utilisateurRepository;
	
	
	@RequestMapping("/all")
	@ResponseBody
	private List<Recette> SearchAll() {
		return (List<Recette>) recetteRepository.findAll();
	}
	
	@RequestMapping("/userRecette")
	@ResponseBody
	private List<Recette> SearchByUser(@RequestHeader("mail") String mail, @RequestHeader("password") String password){		
		Utilisateur u = utilisateurRepository.findByMail(mail);
		return u.getRecette();
	}
	@RequestMapping("/userFavoris")
	@ResponseBody
	private List<Recette> SearchByUserFavoris(@RequestHeader("mail") String mail, @RequestHeader("password") String password){		
		Utilisateur u = utilisateurRepository.findByMail(mail);
		return u.getRecetteFavoris();
	}
	
	@RequestMapping("/search")
	@ResponseBody
	private List<Recette> SearchRecette(@RequestHeader("lib") String lib){		
		return recetteRepository.findByLibContaining(lib);	
	}
	
	@RequestMapping("/homePageRecette")
	@ResponseBody
	private List<Recette> homePageRecette(){
		return recetteRepository.findByIdBefore(4l);
	}
}
