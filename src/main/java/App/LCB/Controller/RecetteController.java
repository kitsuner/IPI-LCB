package App.LCB.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
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
		System.out.println(u);
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
	
	
	
	@RequestMapping(value="", method = RequestMethod.GET)
	private String DisplayRecette(@RequestParam(value= "id", required=true)String id) {
		return "recette.html";
	}
	
	@RequestMapping("/geturl")
	@ResponseBody
	private Recette SearchRecetteByUrl(@RequestHeader("adresse")String adresse) {
		return recetteRepository.findByUrlRecetteEquals(adresse);
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	@ResponseBody
	public void nouvelleRecette (
			@RequestHeader ("lib_recette") String lib_recette, 
			@RequestHeader ("instruction_recette") String instruction_recette, 
			@RequestHeader ("nbr_personne") Integer nbr_personne, 
			@RequestHeader ("liste_ingredient") String liste_ingredient) { 
		
		//CREER UN URL
		//CREER LA LISTE D'INGREDIENTS
    	Recette nouvelleRecette = new Recette(null, lib_recette, instruction_recette, nbr_personne,null,null,null);
    	recetteRepository.save(nouvelleRecette);
		
	}
	
	
}
