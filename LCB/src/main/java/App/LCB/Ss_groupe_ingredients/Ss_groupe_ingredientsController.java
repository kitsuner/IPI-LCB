package App.LCB.Ss_groupe_ingredients;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/ssgping")
public class Ss_groupe_ingredientsController {
	
	@Autowired
	Ss_groupe_ingredientsRepository repo;
	
	//METHODE GET ALL
	@RequestMapping("/all")
	@ResponseBody
	public Iterable<Ss_groupe_ingredients> findSs_groupe_ingredients(){
		return repo.findAll();
	}
		

}
