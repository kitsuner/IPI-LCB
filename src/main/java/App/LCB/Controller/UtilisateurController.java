package App.LCB.Controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import App.LCB.model.Recette;
import App.LCB.model.Utilisateur;
import App.LCB.repository.RecetteRepository;
import App.LCB.repository.UtilisateurRepository;

@Controller
@RequestMapping("/utilisateur")
public class UtilisateurController {

	@Autowired
	private UtilisateurRepository utilisateurRepository;
	
	@Autowired
	private RecetteRepository recetteRepository;
	
	@RequestMapping("/all")
	@ResponseBody
	private List<Utilisateur> SearchAll() {
		return (List<Utilisateur>) utilisateurRepository.findAll();
	}
	
	@RequestMapping("/connexion")
    @ResponseBody
    public Utilisateur connexion(@RequestHeader("mail") String mail, @RequestHeader("password") String password){
        Utilisateur u = utilisateurRepository.findByMail(mail);
        if(u.getMotDePasse().equals(password)){
            return u;
        }
        return null;
    }
	
	
	@RequestMapping("/verifFavoris")
	@ResponseBody
	public Utilisateur verificationFavoris(@RequestHeader("mail")String mail) {
		Utilisateur u = utilisateurRepository.findByMail(mail);
		return u;
	}
	
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	@ResponseBody
	public void nouvelUtilisateur (
			@RequestHeader ("pseudo") String pseudo, 
			@RequestHeader ("mail") String mail, 
			@RequestHeader ("motDePasse") String motDePasse, 
			@RequestHeader ("prenom") String prenom, 
			@RequestHeader ("nom") String nom){
    	Utilisateur nouvelUtilisateur = new Utilisateur(null, pseudo, mail, motDePasse, prenom, nom, null, null);
    	utilisateurRepository.save(nouvelUtilisateur);
		
	}
	
	@RequestMapping(value = "/enregFavoris", method = RequestMethod.PUT)
	@ResponseBody
	@Transactional
	public void addFavoris (@RequestHeader("mail")String mail, @RequestHeader("idRec")Long id){
		Utilisateur u =utilisateurRepository.findByMail(mail);
		Recette r= recetteRepository.findByIdEquals(id);
		List<Recette> listeFavoris = u.getRecetteFavoris();	
		if(listeFavoris.contains(r)) {
			System.out.println("duh");
			listeFavoris.remove(r);
			u.setRecetteFavoris(listeFavoris);
			utilisateurRepository.save(u);
		}
		else {
		System.out.println("bruh");
		listeFavoris.add(r);
		u.setRecetteFavoris(listeFavoris);
		utilisateurRepository.save(u);
		}
	}
	
}
