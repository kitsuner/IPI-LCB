package App.LCB.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import App.LCB.model.Ingredient;
import App.LCB.repository.IngredientRepository;

@Controller
@RequestMapping("/ingredient")
public class IngredientController {
	
	@Autowired
	private IngredientRepository ingredientRepository;
	
	
	@RequestMapping("/all")
	@ResponseBody
	private List<Ingredient> SearchAll() {
		return (List<Ingredient>) ingredientRepository.findAll();
	}
}


