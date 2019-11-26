package App.LCB.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import App.LCB.model.Ingredient;
import App.LCB.model.ListeIngredients;
import App.LCB.repository.IngredientRepository;
import App.LCB.repository.ListeIngredientsRepository;

@Controller
@RequestMapping("/listeIngredient")
public class ListeIngredientsController {

	@Autowired
	private ListeIngredientsRepository listeIngredientRepository;
	
	
	@RequestMapping("/all")
	@ResponseBody
	private List<ListeIngredients> SearchAll() {
		return (List<ListeIngredients>) listeIngredientRepository.findAll();
	}
	
	
	
}
