package App.LCB.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import App.LCB.model.SousGroupeIngredient;
import App.LCB.repository.SousGroupeIngredientRepository;

@Controller
@RequestMapping("/sousgroupe")
public class SousGroupeIngredientController {

	@Autowired
	private SousGroupeIngredientRepository sousGroupeIngredientRepository;
	
	@RequestMapping("/all")
	@ResponseBody
	private List<SousGroupeIngredient> SearchAll() {
		return (List<SousGroupeIngredient>) sousGroupeIngredientRepository.findAll();
	}
}
