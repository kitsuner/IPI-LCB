package App.LCB.Ss_ss_groupe_ingredients;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import App.LCB.Ss_groupe_ingredients.Ss_groupe_ingredients;


@Controller
@RequestMapping("/ssssgping")
public class Ss_ss_groupe_ingredientsController {
	
	@Autowired
	Ss_ss_groupe_ingredientsRepository repo;
	
	/*
	 * //METHODE GET ALL
	 * 
	 * @RequestMapping("/all")
	 * 
	 * @ResponseBody public Iterable<Ss_ss_groupe_ingredients>
	 * findSs_ss_groupe_ingredients(){ return repo.findAll(); }
	 */

}
