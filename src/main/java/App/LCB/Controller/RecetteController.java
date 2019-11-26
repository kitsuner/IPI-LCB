package App.LCB.Controller;

import java.sql.Statement;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import java.sql.* ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import App.LCB.model.Ingredient;
import App.LCB.model.Recette;
import App.LCB.model.Utilisateur;
import App.LCB.repository.IngredientRepository;
import App.LCB.repository.ListeIngredientsRepository;
import App.LCB.repository.RecetteRepository;
import App.LCB.repository.UtilisateurRepository;
import App.LCB.model.Ingredient;

@Controller
@RequestMapping("/recette")
public class RecetteController {

	@Autowired
	private RecetteRepository recetteRepository;
	
	@Autowired
	private UtilisateurRepository utilisateurRepository;
	
	@Autowired
	private ListeIngredientsRepository listeIngredientsRepository;
	
	
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
	
@RequestMapping(value = "/nouv_recette", method = RequestMethod.POST)
    @ResponseBody
    public void nouvelleRecette(
    		@RequestHeader("mail") String mail, 
    		@RequestHeader("lib") String lib, 
            @RequestHeader("nbrPer") Integer nbr, 
            @RequestHeader("description") String description, 
            @RequestHeader("listIngr") Ingredient[] listIngr,
            @RequestHeader("listQuant") Integer[] listQuant){

        Utilisateur u = utilisateurRepository.findByMail(mail);
        Long id = u.getIdUtilisateur();
        
        String url = concatUrl(lib);
        
        Recette nouvelleRecette = new Recette(null, lib, id, description, nbr,url,null,null);
        recetteRepository.save(nouvelleRecette);
        
        
        //CREER ET ENREGISTRER L'OBJET LISTE INGREDIENT ASSOCIE A LA RECETTE 
        Recette r = recetteRepository.findByUrlRecetteEquals(url);
        
        Integer i = 0;
        for(Ingredient ingredient : listIngr) {
        	
        	ListeIngredients l = new ListeIngredients(null, ingredient, r, listQuant[i]);
        	System.out.println(l);
        	listeIngredientsRepository.save(l);
        	i++;
        }
        
        
        
    }
	
	
	// 	Fonction prennant en paramètre le lib d'une recette et générant une bonne url avec un chiffre de 0 à 999999 pour saler 
	public String concatUrl(String lib){
		String url="http://localhost:8080/recette?id=";
		String salt=Integer.toString((int)Math.ceil(Math.random()*1000000));
		lib= lib.replaceAll(" ", "");
		url= url.concat(lib);
		url= url.concat(salt);
		return url;
	}
	
	

}
